from mysql.connector import connect 
conn = connect( 
    host="localhost", 
    user="root", 
    password="wrogn", 
    database="teacher" 
) 
cur = conn.cursor() 
cur.execute("grant select on teacher.faculty to student;") 
conn.commit() 
conn.close() 
print("role student granted select privileges successfully")