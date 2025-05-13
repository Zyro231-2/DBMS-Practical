import mysql.connector

# Establish connection to the MySQL database
conn = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="dbms1234",
    database="College"
)

cursor = conn.cursor()

# SQL command to create the department salary totals view
create_view_sql = """
CREATE VIEW dept_salary_totals AS
SELECT dept_name, SUM(salary) AS total_salary
FROM instructor
GROUP BY dept_name;
"""

# Execute the query
cursor.execute(create_view_sql)
conn.commit()

print("View 'dept_salary_totals' created successfully.")

# Close the cursor and connection
cursor.close()
conn.close()
