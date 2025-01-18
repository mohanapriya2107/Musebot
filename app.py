from flask import Flask, render_template, request, redirect, url_for, jsonify, flash, session
from database import create_connection, fetch_museum_data_by_category, fetch_museum_data_by_name_with_prices, fetch_ticket_prices_by_type, store_user_selection_in_db, update_booking_with_date_time, is_museum_open
from mysql.connector import Error
from datetime import datetime, timedelta
import re
import joblib
from unidecode import unidecode
from sklearn.metrics.pairwise import cosine_similarity
import numpy as np
import pandas as pd

app = Flask(__name__)
app.secret_key = 'musebot'  # Required for flashing messages

def preprocess_text(text):
    text = re.sub(r'[^a-zA-Z\s]', '', text)  # Remove non-alphabetic characters
    text = unidecode(text.lower())  # Remove accents and convert to lowercase
    return ' '.join(text.split())  # Remove extra spaces

def load_model():
    try:
        model = joblib.load('model.pkl')  # Load the pre-trained KNN model
        vectorizer = joblib.load('im_vectorizer.pkl')  # Load the pre-trained TF-IDF vectorizer
        return vectorizer, model
    except Exception as e:
        print(f"Error loading model or vectorizer: {e}")
        return None, None

# Function to find the best match for the query using KNN model
def find_best_match(query, vectorizer, model, train_names, train_names_vectors):
    processed_query = preprocess_text(query)  # Preprocess the query text
    print(f"Processed Query: {processed_query}")  # Debug statement
    
    # Vectorize the user query
    query_vector = vectorizer.transform([processed_query])
    
    # Predict if the query is a correct match or not (1 = correct, 0 = typo)
    prediction = model.predict(query_vector)
    print(f"Prediction: {prediction}")  # Debug statement
    
    # If prediction is 1, it's a valid name, so return the query as the best match
    if prediction[0] == 1:
        return query  # Query itself is the best match
    
    else:
        # If prediction is 0 (a typo), find the closest match using cosine similarity
        similarities = cosine_similarity(query_vector, train_names_vectors)
        best_match_index = np.argmax(similarities)  # Get the index of the most similar name
        best_match = train_names[best_match_index]
        print(f"Best Match: {best_match}")  # Debug statement
        return best_match  # Return the most similar valid name

@app.route('/')
def index():
    """Render the language selection page."""
    return render_template('language.html')

@app.route('/language_selection', methods=['POST'])
def language_selection():
    """Handle language selection and redirect to the main menu."""
    return redirect(url_for('main_menu'))

@app.route('/main_menu', methods=['GET', 'POST'])
def main_menu():
    """Render the main menu with options for ticket booking and booking management."""
    return render_template('main_menu.html')

@app.route('/options', methods=['POST'])
def options():
    """Display options after language selection."""
    return render_template('options.html')


@app.route('/recommend')
def recommend_museums():
    """Display museum categories for recommendation."""
    categories = [
        "Arts", 
        "Historical Museums", 
        "Science and Technology Museums",
        "Museum-house",
        "Archeology Museum", 
        "General Museums"
    ]
    return render_template('recommend.html', categories=categories)

@app.route('/recommend/<category>')
def display_museums_by_category(category):
    """Fetch and display museums by the selected category."""
    museums = fetch_museum_data_by_category(category)
    if museums:
        return render_template('category_museums.html', category=category, museums=museums)
    else:
        return render_template('error.html', message="No museums found in this category.")

@app.route('/museum/<museum_name>')
def display_museum_details(museum_name):
    """Display a form to select user type before showing museum details."""
    return render_template('select_user_type.html', museum_name=museum_name)

@app.route('/museum_details', methods=['POST'])
def show_museum_details():
    """Store museum name and user type, then display museum details."""
    museum_name = request.form.get('museum_name')
    user_type = request.form.get('user_type')

    if not museum_name or not user_type:
        return render_template('error.html', message="Please select a user type.")

    # Store museum name and user type in the database
    connection = create_connection()
    if connection:
        cursor = connection.cursor()
        try:
            query = "INSERT INTO selected_museum (museum_name, user_type) VALUES (%s, %s)"
            cursor.execute(query, (museum_name, user_type))
            connection.commit()
        except Error as e:
            print(f"Database Error: {e}")
        finally:
            cursor.close()
            connection.close()

    # Fetch and display museum details
    museum_details = fetch_museum_data_by_name_with_prices(museum_name, user_type)
    if museum_details:
        return render_template(
            'museum_details.html',
            museum_details=museum_details
        )
    else:
        return render_template('error.html', message="Museum details not found.")

@app.route('/search', methods=['GET', 'POST'])
def search():
    if request.method == 'POST':
        query = request.json.get('query')  # Get the search query from the request
        
        if not query:
            return jsonify({'error': 'Query is required'}), 400

        # Load the model and vectorizer
        vectorizer, model = load_model()

        if not vectorizer or not model:
            return jsonify({'error': 'Model or vectorizer not found.'}), 500

        # Load the valid museum names (from CSV or database)
        df_new = pd.read_csv('D:/museum_chatbot/dataset/museums.csv', encoding='iso-8859-1')
        valid_museum_names = df_new['correct_name'].tolist()  # List of valid names from your CSV
        
        # Vectorize the valid museum names
        train_names_vectors = vectorizer.transform(valid_museum_names)

        # Use the search function to refine the museum name using KNN model
        refined_museum_name = find_best_match(query, vectorizer, model, valid_museum_names, train_names_vectors)
        print(f"Refined Museum Name: {refined_museum_name}")  # Debug statement

        return jsonify({'best_match': refined_museum_name})
    else:
        # Render search page if the method is GET
        return render_template('search.html')

# Route for handling search results and storing in the database
@app.route('/search_results', methods=['POST'])
def search_results():
    """Handle search results, refine museum name, and store user type in the database."""
    
    museum_name = request.form.get('museum_name')
    user_type = request.form.get('user_type')

    # Validate inputs
    if not museum_name or not user_type:
        return render_template('error.html', message="Please provide both museum name and user type.")

    # Load the model and vectorizer
    vectorizer, model = load_model()

    if not vectorizer or not model:
        return render_template('error.html', message="Model or vectorizer not found.")

    # Load the valid museum names (from CSV or database)
    df_new = pd.read_csv('D:/museum_chatbot/dataset/museums.csv', encoding='iso-8859-1')
    valid_museum_names = df_new['correct_name'].tolist()  # List of valid names from your CSV
    
    # Vectorize the valid museum names
    train_names_vectors = vectorizer.transform(valid_museum_names)

    # Use the search function to refine the museum name using KNN model
    refined_museum_name = find_best_match(museum_name, vectorizer, model, valid_museum_names, train_names_vectors)
    print(f"Refined Museum Name: {refined_museum_name}")  # Debug statement

    # Fetch museum details based on the refined name (implement this function to fetch from DB or API)
    museum_details = fetch_museum_data_by_name_with_prices(refined_museum_name, user_type)
    
    if not museum_details:
        return render_template('error.html', message="Museum or ticket price not found.")

    # Store the user type and refined museum name in the selected_museum table
    connection = create_connection()
    if connection:
        cursor = connection.cursor()
        try:
            query = "INSERT INTO selected_museum (museum_name, user_type) VALUES (%s, %s)"
            cursor.execute(query, (refined_museum_name, user_type))
            connection.commit()
        except Error as e:
            print(f"Database Error: {e}")
            return render_template('error.html', message="An error occurred while saving the museum selection.")
        finally:
            cursor.close()
            connection.close()

    # Render the museum details page
    return render_template('museum_details.html', museum_details=museum_details)

@app.route('/book_ticket/<museum_name>', methods=['GET'])
def book_ticket_form(museum_name):
    """Render the ticket booking form."""
    return render_template('book_ticket.html', museum_name=museum_name)

@app.route('/book_ticket', methods=['POST'])
def book_ticket():
    """Handle ticket booking for a selected museum."""
    # Extract form data
    user_name = request.form.get('user_name', '').strip()
    adult_tickets = request.form.get('adult_tickets', '').strip()
    children_tickets = request.form.get('children_tickets', '').strip()
    photography_tickets = request.form.get('photography_tickets', '').strip()

    # Validate inputs
    if not user_name or int(adult_tickets)<0 or int(children_tickets)<0 or int(photography_tickets)<0 or (int(adult_tickets) + int(children_tickets) + int(photography_tickets)) <= 0:
        flash("Please provide all required information.", "error")
        
        # Get the museum name (to redirect with it)
        museum_name = request.form.get('museum_name', '')
        
        return redirect(url_for('book_ticket_form', museum_name=museum_name))
    
    # Store the user_name in session
    session['user_name'] = user_name
    
    # Fetch museum name and user type from the database
    connection = create_connection()
    if connection:
        cursor = connection.cursor()
        # Query to get the latest museum and user type
        cursor.execute("SELECT museum_name, user_type FROM selected_museum ORDER BY id DESC LIMIT 1")
        result = cursor.fetchone()
        if not result:
            return render_template('book_ticket.html', error='No museum selected. Please try again.')
    
        museum_name, user_type = result

        # Load the model and vectorizer
        vectorizer, model = load_model()

        if not vectorizer or not model:
            return render_template('error.html', message="Model or vectorizer not found.")

        # Load the valid museum names (from CSV or database)
        df_new = pd.read_csv('D:/museum_chatbot/dataset/museums.csv', encoding='iso-8859-1')
        valid_museum_names = df_new['correct_name'].tolist()  # List of valid names from your CSV
        
        # Vectorize the valid museum names
        train_names_vectors = vectorizer.transform(valid_museum_names)

        # Use the search function to refine the museum name
        refined_museum_name = find_best_match(museum_name, vectorizer, model, valid_museum_names, train_names_vectors)
    
        # Assuming 'visit_date' and 'visit_time' are placeholders here
        visit_date = 'None'  # Example date
        visit_time = 'None'  # Example time
        
        # Insert ticket booking details into the database with visit_date and visit_time
        query = """
            INSERT INTO ticket_booking (museum_name, category, adult_tickets, children_tickets, photography_tickets, visit_date, visit_time, user_name)
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        cursor.execute(query, (refined_museum_name, user_type, int(adult_tickets), int(children_tickets), int(photography_tickets), visit_date, visit_time, user_name))
        connection.commit()
        
        # Redirect to the 'enter_date' page
        return redirect(url_for('enter_date'))
    else:
        return render_template('book_ticket.html', error='Database connection failed.')

@app.route('/enter_date', methods=['GET', 'POST'])
def enter_date():
    """Render the date and time entry form and handle the submission."""
    # Fetch user_name from session
    user_name = session.get('user_name')
    if not user_name:
        return render_template('error.html', message="User not logged in.")
    
    # Fetch the latest booking_id based on the user_name
    connection = create_connection()
    if connection:
        cursor = connection.cursor(dictionary=True)
        query = """
            SELECT id, museum_name FROM ticket_booking
            WHERE user_name = %s
            ORDER BY id DESC
            LIMIT 1
        """
        cursor.execute(query, (user_name,))
        result = cursor.fetchone()
        if result:
            booking_id = result['id']
            museum_name = result['museum_name']
        else:
            cursor.close()  # Close the cursor after fetching result
            connection.close()  # Close the connection after fetching result
            return render_template('error.html', message="No bookings found for this user.")
        
        cursor.close()  # Close the cursor after fetching result
        connection.close()  # Close the connection after fetching result
    else:
        return render_template('error.html', message="Database connection failed.")
    
    # Fetch museum details from the database for the specific museum
    connection = create_connection()
    if connection:
        cursor = connection.cursor(dictionary=True)
        query = """
            SELECT name, opening_hours, holidays, required_time 
            FROM museums 
            WHERE name = %s
        """
        cursor.execute(query, (museum_name,))
        museum_data = cursor.fetchone()
        cursor.close()  # Close the cursor after fetching result
        connection.close()  # Close the connection after fetching result

        if not museum_data:
            return render_template('error.html', message="Museum data not available.")
    else:
        return render_template('error.html', message="Database connection failed.")
    
    if request.method == 'POST':
        booking_date = request.form.get('booking_date')
        booking_time = request.form.get('booking_time')
        print(f"Form submitted with date: {booking_date}, time: {booking_time}")  # Debugging statement
        if not (booking_date and booking_time):
            flash("Please provide both booking date and time.", "error")
            return redirect(url_for('enter_date'))
        
        # Check if the museum is open on the selected date and time
        is_open, message = is_museum_open(museum_name, booking_date, booking_time)
        if not is_open:
            flash(message, "error")
            return redirect(url_for('enter_date'))
        
        # Update the booking with the selected date and time
        connection = create_connection()
        if connection:
            cursor = connection.cursor()
            query = """
                UPDATE ticket_booking
                SET visit_date = %s, visit_time = %s
                WHERE id = %s
            """
            cursor.execute(query, (booking_date, booking_time, booking_id))
            connection.commit()  # Commit the transaction
            print(f"Booking updated with date: {booking_date}, time: {booking_time}")  # Debugging statement
    
            cursor.close()  # Close the cursor after query execution
            connection.close()  # Close the connection after query execution
    
        flash(f"Successfully booked tickets for {booking_date} at {booking_time}.", "success")
        return redirect(url_for('my_bookings', user_name=user_name))
        
    return render_template('enter_date.html', museum_data=museum_data)

@app.route('/my_bookings')
def my_bookings():
    """Fetch and display the bookings for a user."""
    # Get the 'user_name' from the session
    user_name = session.get('user_name')

    if not user_name:
        return "User name is required", 400  # If no user_name is passed

    # Fetch bookings for the user from the database
    connection = create_connection()
    cursor = connection.cursor()
    query = "SELECT * FROM ticket_booking WHERE user_name = %s"
    cursor.execute(query, (user_name,))
    bookings = cursor.fetchall()  # Fetch all matching bookings
    cursor.close()
    connection.close()

    # Check if bookings exist
    if not bookings:
        return render_template('my_bookings.html', bookings=None)  # If no bookings found

    # Render the bookings page with the fetched data
    return render_template('my_bookings.html', bookings=bookings)

@app.route('/booking_management', methods=['GET'])
def booking_management():
    """Render the booking management page with options to change time slot, change date slot, and cancel booking."""
    return render_template('booking_management.html')

@app.route('/change_time', methods=['GET', 'POST'])
def change_time():
    """Render the time change form and handle the submission."""
    if request.method == 'POST':
        ticket_id = request.form.get('ticket_id')
        new_time = request.form.get('new_time')

        if not ticket_id or not new_time:
            flash("Please enter a valid ticket ID and new time.", "error")
            return redirect(url_for('change_time'))

        # Retrieve the current visit_date from the database if we need it
        connection = create_connection()
        cursor = connection.cursor()
        
        cursor.execute("SELECT visit_date FROM ticket_booking WHERE id = %s", (ticket_id,))
        result = cursor.fetchone()
        
        if result:
            visit_date = result[0]  # Get the existing visit_date
        else:
            flash("Ticket ID not found.", "error")
            return redirect(url_for('change_time'))

        # Update the booking with the new time (keep the same visit_date)
        updated = update_booking_with_date_time(ticket_id, visit_date=visit_date, visit_time=new_time)
        
        if updated:
            flash(f"Successfully updated time to {new_time} for Ticket ID: {ticket_id}.", "success")
            return redirect(url_for('my_bookings'))
        else:
            flash("Failed to update the booking time. Please check the ticket ID and try again.", "error")
            return redirect(url_for('change_time'))

    return render_template('change_time.html')

@app.route('/change_date', methods=['GET', 'POST'])
def change_date():
    """Render the date change form and handle the submission."""
    if request.method == 'POST':
        ticket_id = request.form.get('ticket_id')
        new_date = request.form.get('new_date')

        if not ticket_id or not new_date:
            flash("Please enter a valid ticket ID and date.", "error")
            return redirect(url_for('change_date'))

        # Update the booking in the database
        connection = create_connection()
        cursor = connection.cursor()
        
        # Check if the ticket exists in the database
        cursor.execute("SELECT * FROM ticket_booking WHERE id = %s", (ticket_id,))
        ticket = cursor.fetchone()
        
        if ticket:
            # Update the visit_date in the database
            update_query = """
            UPDATE ticket_booking
            SET visit_date = %s
            WHERE id = %s
            """
            cursor.execute(update_query, (new_date, ticket_id))
            connection.commit()
            flash(f"Successfully changed the date to {new_date} for Ticket ID: {ticket_id}", "success")
            return redirect(url_for('my_bookings'))
        else:
            flash("Booking not found. Please check the ticket ID and try again.", "error")
            return redirect(url_for('change_date'))

    return render_template('change_date.html')

@app.route('/cancel_booking', methods=['GET', 'POST'])
def cancel_booking():
    """Render the booking cancellation form and handle the submission."""
    if request.method == 'POST':
        ticket_id = request.form.get('ticket_id')
        if not ticket_id:
            flash("Please enter a valid ticket ID.", "error")
            return redirect(url_for('cancel_booking'))

        # Check if the ticket exists in the database
        connection = create_connection()
        cursor = connection.cursor(dictionary=True)  # Ensure the results are returned as dictionaries
        cursor.execute("SELECT * FROM ticket_booking WHERE id = %s", (ticket_id,))
        booking = cursor.fetchone()

        if booking:
            # Combine booking date and time for comparison
            booking_datetime = datetime.strptime(f"{booking['visit_date']} {booking['visit_time']}", "%Y-%m-%d %H:%M")
            current_datetime = datetime.now()
            time_difference = booking_datetime - current_datetime

            if time_difference < timedelta(hours=24):
                flash("Only 50% will be refunded as the cancellation is within 24 hours of the booking time.", "warning")
                return render_template('confirm_cancellation.html', ticket_id=ticket_id, partial_refund=True)
            else:
                flash("Full refund will be provided.", "success")
                return render_template('confirm_cancellation.html', ticket_id=ticket_id, partial_refund=False)
        else:
            flash("Booking not found. Please check the ticket ID and try again.", "error")
            return redirect(url_for('cancel_booking'))

    return render_template('cancel_booking.html')

@app.route('/confirm_cancellation', methods=['POST'])
def confirm_cancellation():
    """Handle the final confirmation of the booking cancellation."""
    ticket_id = request.form.get('ticket_id')
    if not ticket_id:
        return render_template('error.html', message="Invalid ticket ID.")

    # Find the booking in the database and remove it
    connection = create_connection()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM ticket_booking WHERE id = %s", (ticket_id,))
    booking = cursor.fetchone()

    if booking:
        # Delete the booking from the database
        cursor.execute("DELETE FROM ticket_booking WHERE id = %s", (ticket_id,))
        connection.commit()

        flash(f"Successfully canceled booking for Ticket ID: {ticket_id}. Amount will be refunded in 3 working days.", "success")
        return redirect(url_for('my_bookings'))
    else:
        return render_template('error.html', message="Booking not found.")

if __name__ == '__main__':
    app.run(debug=True)