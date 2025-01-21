from database import fetch_museum_data, fetch_ticket_prices

# Test fetch_museum_data
museums = fetch_museum_data()
print("Museums fetched:")
print(museums)

# Test fetch_ticket_prices for 'The Louvre' and 'Indian'
ticket_info = fetch_ticket_prices("Visvesvaraya Industrial and Technological Museum", "Indian")
print("\nTicket prices for 'Visvesvaraya Industrial and Technological Museum' (Indian):")
print(ticket_info)