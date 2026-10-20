use sample;
-- Create table
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT);

-- Insert records
INSERT INTO employees VALUES
(1, 'Alex', 'IT', 70000), (2, 'Brian', 'IT', 60000), (3, 'Chris', 'HR', 50000), 
(4, 'Diana', 'HR', 55000), (5, 'Eva', 'Finance', 80000), (6, 'Frank', 'Finance', 75000);

CREATE TABLE students (
    student_id INT,
    student_name VARCHAR(50),
    course VARCHAR(30),
    mark INT);

INSERT INTO students VALUES
(1, 'John', 'Python', 85), (2, 'Sara', 'Java', 92), (3, 'Mike', 'Python', 65),
(4, 'Anna', 'Java', 78), (5, 'Tom', 'Python', 90), (6, 'David', 'SQL', 72);

CREATE TABLE products (
product_id INT,
product_name VARCHAR(50),
category VARCHAR(30),
price INT);

INSERT INTO products VALUES 
(1, 'Laptop', 'Electronics', 55000), (2, 'Mobile', 'Electronics', 25000), (3, 'Headphones', 'Electronics', 5000),
(4, 'Refrigerator', 'Appliances', 35000),(5, 'Washing Machine', 'Appliances', 28000), (6, 'Keyboard', 'Accessories', 3000);

----view tables 

select * from employees;
select * from stidents ;
select * from products;

-----1. Find Employees with Salary Greater Than Average

WITH avg_salary AS (
    SELECT AVG(salary) AS average_salary
    FROM employees)
SELECT e.emp_id, e.emp_name, e.department, e.salary
FROM employees e
CROSS JOIN avg_salary a
WHERE e.salary > a.average_salary;

----2 department wise avg salary

WITH dept_salary AS (
    SELECT 
        department,
        AVG(salary) AS average_salary
    FROM employees
    GROUP BY department)
SELECT department, average_salary
FROM dept_salary;

-----3  find student who secord above avg

WITH average_mark AS (
    SELECT AVG(mark) AS avg_mark
    FROM students)
SELECT s.student_name, s.course, s.mark
FROM students s
CROSS JOIN average_mark a
WHERE s.mark > a.avg_mark;

---4 find high prioced products

WITH product_data AS (
    SELECT product_name, category, price
    FROM products)
SELECT product_name, category, price
FROM product_data
WHERE price > 20000;

----5 calculate employees 10% bonus

WITH employee_bonus AS (
SELECT emp_id, emp_name, salary, salary * 0.10 AS bonus
FROM employees)
SELECT emp_name, salary, bonus, salary + bonus AS total_salary
FROM employees_bonus;










