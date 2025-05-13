from mysql.connector import connect

# Connect to MySQL Database
conn = connect(
    host="127.0.0.1",
    user="root",
    password="dbms1234",
    database="College"
)
cur = conn.cursor() 

# Create Role if it does not exist
cur.execute("CREATE ROLE IF NOT EXISTS student;") 
conn.commit() 
conn.close() 

print("Role 'student' created successfully!")
