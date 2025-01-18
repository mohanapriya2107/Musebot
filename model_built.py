import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score, classification_report
from sklearn.model_selection import train_test_split
from unidecode import unidecode
import random
import re
import joblib

# Path to the existing CSV file
csv_path = "D:\\museum_chatbot\\dataset\\museums.csv"  # Update this path

# Load dataset
df_new = pd.read_csv(csv_path, encoding='iso-8859-1')

# Enhanced preprocessing function
def preprocess(text):
    text = re.sub(r'[^a-zA-Z\s]', '', text)
    text = unidecode(text.lower())
    return ' '.join(text.split())

# Generate variations with added random typos
def generate_variations(name):
    variations = [name.replace(' ', '').lower(), name.lower(), name.replace(' ', '  ').lower()]
    typo = list(name)
    if len(typo) > 1:
        i = random.randint(0, len(typo) - 2)
        typo[i], typo[i + 1] = typo[i + 1], typo[i]
        variations.append(''.join(typo).lower())
    return variations

# Create variation dataset
data = {'correct_name': [], 'variation': []}
for name in df_new['correct_name']:
    for variation in generate_variations(name):
        data['correct_name'].append(preprocess(name))
        data['variation'].append(preprocess(variation))

df_variations = pd.DataFrame(data)

# Assign labels: 1 if correct name matches the variation, 0 otherwise
df_variations['label'] = (df_variations['correct_name'] == df_variations['variation']).astype(int)

# Split dataset
train_df, test_df = train_test_split(df_variations, test_size=0.2, random_state=42)

# Vectorize using character-level n-grams
vectorizer = TfidfVectorizer(analyzer='char_wb', ngram_range=(2, 4)).fit(train_df['variation'])
X_train = vectorizer.transform(train_df['variation'])
y_train = train_df['label']
X_test = vectorizer.transform(test_df['variation'])
y_test = test_df['label']

# Set KNN parameters
knn_params = {
    'metric': 'manhattan',
    'n_neighbors': 3,
    'weights': 'distance'
}

# Train KNN Classifier
knn = KNeighborsClassifier(**knn_params)
knn.fit(X_train, y_train)

# Save the model and vectorizer
joblib.dump(knn, 'model.pkl')
joblib.dump(vectorizer, 'im_vectorizer.pkl')

# Evaluate the model
y_pred = knn.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f"Model accuracy: {accuracy * 100:.2f}%")
print("\nClassification Report:")
print(classification_report(y_test, y_pred))
