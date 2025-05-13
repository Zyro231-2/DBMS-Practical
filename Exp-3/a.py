import mysql.connector
import subprocess

# Database connection
conn = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="dbms1234",
    database="College"
)
cursor = conn.cursor()

# SQL command to create a view
create_view_sql = """
CREATE VIEW faculty AS
SELECT id, name, dept_name
FROM instructor;
"""

# Execute SQL command
cursor.execute(create_view_sql)
conn.commit()
print("View 'faculty' created successfully.")

# Closing the database connection
cursor.close()
conn.close()

# # Using Git for version control
# try:
#     # Add the script to Git
#     subprocess.run(["git", "add", "database_script.py"], check=True)
#     subprocess.run(["git", "commit", "-m", "Added faculty view creation script"], check=True)
#     subprocess.run(["git", "push", "origin", "main"], check=True)
#     print("Database script committed and pushed to GitHub successfully.")
# except Exception as e:
#     print("Git operation failed:", e)
