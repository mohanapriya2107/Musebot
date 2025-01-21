import os
import pickle
from sklearn.feature_extraction.text import CountVectorizer
from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split

# Training data
intents = {
    "ticket_booking": [
        "I want to book a ticket",
        "Can I buy a museum ticket?",
        "Book a visit",
        "I need tickets for a museum"
    ],
    "recommend": [
        "Suggest a museum",
        "Can you recommend a place?",
        "I need museum recommendations",
        "What museums do you recommend?"
    ],
    "manage_booking": [
        "Change my ticket",
        "Update booking",
        "Cancel my reservation",
        "I need to modify my booking"
    ]
}

# Prepare data
texts = []
labels = []

for intent, examples in intents.items():
    texts.extend(examples)
    labels.extend([intent] * len(examples))

# Split the data
X_train, X_test, y_train, y_test = train_test_split(texts, labels, test_size=0.2, random_state=42)

# Vectorize the data
vectorizer = CountVectorizer()
X_train_vectorized = vectorizer.fit_transform(X_train)
X_test_vectorized = vectorizer.transform(X_test)

# Train the model
model = LogisticRegression()
model.fit(X_train_vectorized, y_train)

# Evaluate the model
y_pred = model.predict(X_test_vectorized)
accuracy = accuracy_score(y_test, y_pred)

print(f"Model Accuracy: {accuracy:.2f}")

# Save the model and vectorizer
os.makedirs("models", exist_ok=True)
with open("models/chatbot_model.pkl", "wb") as model_file:
    pickle.dump((model, vectorizer), model_file)
