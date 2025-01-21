from flask import Flask, render_template, request, redirect, url_for, flash
import smtplib
import random
import ssl
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

app = Flask(__name__)
app.secret_key = "your_secret_key"

# In-memory storage for OTP
otp_storage = {}

# Function to generate a random OTP
def generate_otp():
    return random.randint(100000, 999999)

# Function to send OTP email
def send_otp_email(sender_email, sender_password, recipient_email, otp):
    try:
        # Create email content
        subject = "Your OTP Verification Code"
        body = f"Hello,\n\nYour OTP code is: {otp}\n\nPlease do not share it with anyone.\n\nRegards,\nYour App Team"

        # Create the email message
        message = MIMEMultipart()
        message["From"] = sender_email
        message["To"] = recipient_email
        message["Subject"] = subject
        message.attach(MIMEText(body, "plain"))
        # Set up the secure connection
        context = ssl.create_default_context()
        with smtplib.SMTP("smtp.gmail.com", 587) as server:
            server.starttls(context=context)  # Secure the connection
            server.login(sender_email, sender_password)  # Login to the SMTP server
            server.sendmail(sender_email, recipient_email, message.as_string())  # Send email
        return True
    except Exception as e:
        print(f"Failed to send email: {e}")
        return False

# Route to serve the home page
@app.route("/")
def index():
    return render_template("index.html")
@app.route("/")
def submit():
    return render_template("success.html")

@app.route("/send-otp", methods=["POST"])
def send_otp():
    email = request.form["email"]
    otp = generate_otp()
    sender_email = "korukoppulamohanapriya@gmail.com"  # Replace with your email
    sender_password = "oace ajek woxx szwu"  # Replace with your app password

    if send_otp_email(sender_email, sender_password, email, otp):
        otp_storage[email] = otp  # Store the OTP temporarily
        flash("OTP sent successfully! Please check your email.", "success")
        return redirect(url_for("validate_otp"))
    else:
        flash("Failed to send OTP. Please try again.", "danger")
        return redirect(url_for("index"))

# Route to validate OTP
@app.route("/validate-otp")
def validate_otp():
    return render_template("validate.html")

# Route to handle OTP validation
@app.route("/verify-otp", methods=["POST"])
def verify_otp():
    email = request.form["email"]
    user_otp = request.form["otp"]


    if email in otp_storage and str(otp_storage[email]) == user_otp:
        return "OTP validation successful! You are verified."
    else:
        return "Invalid OTP. Please try again."

if __name__ == "__main__":
    app.run(debug=True)