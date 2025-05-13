from mysql.connector import connect 
conn = connect( 
    host="localhost", 
    user="root", 
    password="wrogn", 
    database="teacher" 
) 
cur = conn.cursor() 
cur.execute(""" 
    CREATE USER IF NOT EXISTS 'new_user'@'localhost' 
    IDENTIFIED BY '12345678'; 
""") 
cur.execute(""" 
    GRANT 'student' TO 'new_user'@'localhost'; 
""") 
conn.commit() 
conn.close() 
print("User 'new_user' created and granted 'student' role.") 