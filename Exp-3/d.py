import mysql.connector

conn = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="dbms1234",
    database="College"
)
cursor = conn.cursor()
create_role_sql = "CREATE ROLE student;"
cursor.execute(create_role_sql)
grant_privileges_sql = "GRANT SELECT ON College.* TO student;"
cursor.execute(grant_privileges_sql)
assign_role_sql = "GRANT student TO 'user_name'@'localhost';"
cursor.execute(assign_role_sql)
set_default_role_sql = "SET DEFAULT ROLE student FOR 'user_name'@'localhost';"
cursor.execute(set_default_role_sql)
cursor.close()
conn.close()
print("Student role created and assigned successfully.")
