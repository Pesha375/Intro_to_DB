import mysql.connector

def create_database():
    try:
        # Establish a connection to the MySQL server
        conn = mysql.connector.connect(
            host="localhost",
            user="root",
            password="Evan@..6100.",
            database="alx_book_store"
        )

        # Create the database
        cursor = conn.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        print(f"Error: failed to connect to database: {err}")

create_database()

if __name__ == "__main__":
    create_database()