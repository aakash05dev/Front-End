CREATE DATABASE subquery ;
USE subquery ;

-- Create Tables

CREATE TABLE Departments (

dept_id INT PRIMARY KEY,

dept_name VARCHAR(50),

location VARCHAR(50));

SELECT * FROM Departments ;

CREATE TABLE Employees (

emp_id INT PRIMARY KEY,
emp_name VARCHAR(50),
job_title VARCHAR(50),
manager_id INT,
hire_date DATE,
salary DECIMAL(10,2),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id));

SELECT * FROM Employees ;

CREATE TABLE Projects (
project_id INT PRIMARY KEY,
project_name VARCHAR(50),
budget DECIMAL(12,2),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id));

SELECT * FROM Projects ;

CREATE TABLE Employee_Projects (
emp_id INT,
project_id INT,
hours_worked INT,
PRIMARY KEY (emp_id, project_id),
FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
FOREIGN KEY (project_id) REFERENCES Projects(project_id));

SELECT * FROM  Employee_Projects ;

-- Insert Data

INSERT INTO Departments VALUES
(10, 'HR', 'New York'),
(20, 'Engineering', 'San Francisco'),
(30, 'Marketing', 'London'),
(40, 'Sales', 'Chicago'),
(50, 'Legal', 'Toronto');

INSERT INTO Employees VALUES
(101, 'Alice Smith', 'HR Manager', NULL, '2020-01-15', 95000.00, 10),
(102, 'Bob Jones', 'Software Engineer', 105, '2021-03-22', 105000.00, 20),
(103, 'Charlie Brown', 'QA Engineer', 105, '2022-06-01', 70000.00, 20),
(104, 'David Miller', 'Marketing Specialist', 106, '2023-02-10', 65000.00,30),
(105, 'Emma Davis', 'Engineering Director', NULL, '2019-05-12', 150000.00,20),
(106, 'Frank Wilson', 'Marketing Director', NULL, '2018-11-20', 140000.00,30),
(107, 'Grace Lee', 'Sales Rep', 108, '2024-01-05', 55000.00, 40),
(108, 'Henry Clark', 'Sales Manager', NULL, '2017-03-15', 115000.00, 40),
(109, 'Ivy Taylor', 'Software Engineer', 105, '2025-08-19', 98000.00, 20);

INSERT INTO Projects VALUES
(501, 'Apollo Project', 250000.00, 20),
(502, 'Zeus Initiative', 120000.00, 20),
(503, 'Global Branding', 85000.00, 30),
(504, 'CRM Migration', 150000.00, 40),
(505, 'Talent Acquisition', 30000.00, 10);

INSERT INTO Employee_Projects VALUES
(102, 501, 120),
(102, 502, 80),
(103, 501, 150),
(104, 503, 200),
(105, 501, 40),
(107, 504, 180),
(108, 504, 50),
(109, 502, 100);

-- task 26
 
SELECT emp_name,salary
FROM Employees
WHERE salary > (
SELECT AVG(salary)
FROM Employees);

-- task 27

SELECT emp_name 
FROM Employees 
WHERE dept_id = (
SELECT dept_id
FROM Departments
WHERE dept_name= 'Engineering');

-- task 28

SELECT emp_name
FROM Employees
WHERE emp_id IN (
    SELECT emp_id
    FROM Employee_Projects);

-- task 29

SELECT emp_name
FROM Employees
WHERE emp_id NOT IN (
    SELECT emp_id
    FROM Employee_Projects);

-- task 30

SELECT project_name, budget
FROM Projects
WHERE budget = (
    SELECT MAX(budget)
    FROM Projects);

-- task 31

SELECT dept_name
FROM Departments
WHERE dept_id IN (
    SELECT dept_id
    FROM Projects
    WHERE budget > (
        SELECT AVG(budget)
        FROM Projects));

-- task 32

SELECT emp_name, salary
FROM Employees
WHERE salary > (
    SELECT MAX(salary)
    FROM Employees
    WHERE dept_id = (
        SELECT dept_id
        FROM Departments
        WHERE dept_name = 'Marketing'));

-- task 33

SELECT emp_name, salary, dept_id
FROM Employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
    WHERE dept_id = e.dept_id);

-- task 34

SELECT dept_name
FROM Departments d
WHERE EXISTS (
    SELECT 1
    FROM Employees e
    WHERE e.dept_id = d.dept_id);

-- task 35

SELECT dept_name
FROM Departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM Projects p
    WHERE p.dept_id = d.dept_id);

-- task 36

SELECT 
    emp_name,
    (
        SELECT SUM(salary)
        FROM Employees
    ) AS total_company_payroll
FROM Employees;

-- task 37

SELECT emp_name, hire_date
FROM Employees
WHERE hire_date = (
    SELECT MIN(hire_date)
    FROM Employees);

-- task 38

SELECT MAX(salary) AS second_highest_salary
FROM Employees
WHERE salary < (
    SELECT MAX(salary)
    FROM Employees);

-- task 39

SELECT project_name, budget
FROM Projects
WHERE budget > (
    SELECT COALESCE(SUM(budget), 0)
    FROM Projects
    WHERE dept_id = (
        SELECT dept_id
        FROM Departments
        WHERE dept_name = 'Sales'));

-- task 40

SELECT emp_name, dept_id, manager_id
FROM Employees e
WHERE manager_id IS NOT NULL
AND dept_id <> (
    SELECT dept_id
    FROM Employees m
    WHERE m.emp_id = e.manager_id);

-- task 41

SELECT dept_name
FROM Departments
WHERE dept_id = (
    SELECT dept_id
    FROM Employees
    GROUP BY dept_id
    ORDER BY COUNT(*) DESC
    LIMIT 1);

-- task 42

SELECT emp_name
FROM Employees
WHERE emp_id IN (
    SELECT emp_id
    FROM Employee_Projects
    WHERE hours_worked = (
        SELECT MAX(hours_worked)
        FROM Employee_Projects));

-- task 43

SELECT dept_name
FROM Departments
WHERE location IN (
    SELECT location
    FROM Departments
    WHERE location LIKE 'New%'
       OR location LIKE 'San%');

-- task 44

SELECT emp_name, salary
FROM Employees
WHERE salary > ANY (
    SELECT salary
    FROM Employees
    WHERE YEAR(hire_date) = 2024);

-- task 45

SELECT emp_name
FROM Employees
WHERE emp_id IN (
    SELECT manager_id
    FROM Employees
    WHERE manager_id IS NOT NULL
    GROUP BY manager_id
    HAVING COUNT(*) >= 2);

-- task 46

SELECT project_name, budget
FROM Projects
WHERE budget < (
    SELECT AVG(budget)
    FROM Projects);

-- task 47

SELECT emp_name
FROM Employees
WHERE emp_id IN (
    SELECT emp_id
    FROM Employee_Projects
    WHERE project_id IN (
        SELECT project_id
        FROM Employee_Projects
        GROUP BY project_id
        HAVING COUNT(emp_id) = 1));

-- task 48

SELECT 
    emp_name,
    salary,
    salary - (
        SELECT AVG(e2.salary)
        FROM Employees e2
        WHERE e2.dept_id = e1.dept_id
    ) AS salary_difference
FROM Employees e1;

-- task 49

SELECT dept_name
FROM Departments
WHERE dept_id IN (
    SELECT dept_id
    FROM Employees
    GROUP BY dept_id
    HAVING SUM(salary) = (
        SELECT MIN(total_salary)
        FROM (
            SELECT SUM(salary) AS total_salary
            FROM Employees
            GROUP BY dept_id
        ) AS dept_payroll));

-- task 50

SELECT project_name
FROM Projects
WHERE project_id IN (
    SELECT project_id
    FROM Employee_Projects
    WHERE emp_id IN (
        SELECT emp_id
        FROM Employees
        WHERE dept_id = (
            SELECT dept_id
            FROM Departments
            WHERE dept_name = 'Engineering'
        )
    )
);