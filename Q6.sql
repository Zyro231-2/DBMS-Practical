CREATE TABLE EMPLOYEES (
    Employee_Id INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    Phone_Number VARCHAR(20),
    Hire_Date DATE,
    Job_Id VARCHAR(20),
    Salary DECIMAL(10,2),
    Commission_Pct DECIMAL(5,2),
    Manager_Id INT,
    Department_Id INT
);


INSERT INTO EMPLOYEES (Employee_Id, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Id, Salary, Commission_Pct, Manager_Id, Department_Id) VALUES
(101, 'Alice', 'Johnson', 'alice.johnson@example.com', '9876543210', '2015-08-12', 'HR_Manager', 75000.00, 5.00, 110, 1),
(102, 'Bob', 'Williams', 'bob.williams@example.com', '9876543220', '2017-03-25', 'Software_Engineer', 85000.00, NULL, 101, 2),
(103, 'Catherine', 'Smith', 'catherine.smith@example.com', '9876543230', '2018-09-15', 'Data_Analyst', 72000.00, 2.50, 102, 3),
(104, 'David', 'Brown', 'david.brown@example.com', '9876543240', '2016-06-10', 'Finance_Manager', 90000.00, 7.50, 110, 4),
(105, 'Ella', 'Davis', 'ella.davis@example.com', '9876543250', '2019-11-30', 'Marketing_Executive', 68000.00, 3.00, 104, 5);

SELECT Employee_Id, First_Name, Last_Name, Salary
FROM EMPLOYEES;

SELECT Employee_Id, First_Name, Last_Name, Salary
FROM EMPLOYEES
WHERE Manager_Id = 101;

SELECT First_Name, Last_Name, Salary
FROM EMPLOYEES
WHERE Salary >= 4800;

SELECT Employee_Id, First_Name, Last_Name, Salary
FROM EMPLOYEES
WHERE Last_Name = 'AUSTIN';


SELECT First_Name, Last_Name, Department_Id
FROM EMPLOYEES
WHERE Department_Id IN (3, 2,5);

SELECT DISTINCT Manager_Id
FROM EMPLOYEES
WHERE Manager_Id IS NOT NULL;



select * from employees;





CREATE TABLE DEPARTMENTS (
    dept_no INT PRIMARY KEY,
    dept_name VARCHAR(50),
    dept_location VARCHAR(100)
);

CREATE TABLE EMPLOYEES (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_salary DECIMAL(10,2),
    dept_no INT,
    FOREIGN KEY (dept_no) REFERENCES DEPARTMENTS(dept_no)
);

INSERT INTO DEPARTMENTS (dept_no, dept_name, dept_location) VALUES
(1, 'Human Resources', 'New York'),
(2, 'Finance', 'Chicago'),
(3, 'IT', 'San Francisco'),
(4, 'Marketing', 'Boston'),
(5, 'Sales', 'Seattle');


INSERT INTO EMPLOYEES (emp_id, emp_name, emp_salary, dept_no) VALUES
(101, 'Alice Johnson', 75000.00, 1),
(102, 'Bob Williams', 82000.00, 2),
(103, 'Catherine Smith', 69000.00, 3),
(104, 'David Brown', 73000.00, 4),
(105, 'Ella Davis', 71000.00, 5);


create role dept_manager; 
grant all privileges on employees to dept_manager;
grant select,update on employees to dept_manager; 

begin; 
savepoint sp1; 
commit; 

