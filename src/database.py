import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
password=""
    database="customer_behaviour"
)

print("MySQL connection successful!")

connection.close()