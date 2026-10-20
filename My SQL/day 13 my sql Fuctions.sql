create database sample3;
use sample;


-- 1. CALCULATE EMPLOYEE ANNUAL SALARY


CREATE TABLE employees2 ( emp_id INT, emp_name VARCHAR(50), salary INT);

INSERT INTO employees2 VALUES(1, 'Alex', 50000), (2, 'Brian', 60000), (3, 'Chris', 45000), (4, 'Diana', 55000),(5, 'Eva', 70000);

DELIMITER //
CREATE FUNCTION get_annual_salary(monthly_salary INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END //
DELIMITER ;
SELECT
    emp_name,
    salary AS monthly_salary,
    get_annual_salary(salary) AS annual_salary
FROM employees;


-- 2. FIND EMPLOYEE EXPERIENCE

CREATE TABLE employees_exp ( emp_id INT, emp_name VARCHAR(50),joining_year INT);

INSERT INTO employees_exp VALUES(1, 'Alex', 2020), (2, 'Brian', 2018), (3, 'Chris', 2022), (4, 'Diana', 2019),(5, 'Eva', 2023);

DELIMITER //
CREATE FUNCTION calculate_experience(joining_year INT)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN YEAR(CURDATE()) - joining_year;
END //
DELIMITER ;
SELECT
    emp_name,
    joining_year,
    calculate_experience(joining_year) AS experience
FROM employees_exp;



-- 3. CALCULATE STUDENT GRADE

CREATE TABLE students ( student_id INT, student_name VARCHAR(50), mark INT);

INSERT INTO students VALUES (1, 'John', 95), (2, 'Sara', 85), (3, 'Mike', 70), (4, 'Anna', 55),(5, 'Tom', 45);
 
DELIMITER //
CREATE FUNCTION get_grade(mark INT)
RETURNS VARCHAR(2)
DETERMINISTIC
BEGIN
    DECLARE grade VARCHAR(2);

    IF mark >= 90 AND mark <= 100 THEN
        SET grade = 'A';
    ELSEIF mark >= 75 THEN
        SET grade = 'B';
    ELSEIF mark >= 60 THEN
        SET grade = 'C';
    ELSEIF mark >= 50 THEN
        SET grade = 'D';
    ELSE
        SET grade = 'F';
    END IF;

    RETURN grade;
END //
DELIMITER ;
SELECT
    student_name,
    mark,
    get_grade(mark) AS grade
FROM students;


-- 4. CALCULATE PRODUCT DISCOUNT

CREATE TABLE products ( product_id INT, product_name VARCHAR(50), price INT);

INSERT INTO products VALUES (1, 'Laptop', 60000), (2, 'Mobile', 30000), (3, 'Tablet', 20000);

DELIMITER //
CREATE FUNCTION calculate_discount(
    price INT,
    discount_percentage INT
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN price * discount_percentage / 100;
END //
DELIMITER ;
SELECT
    product_name,
    price,
    calculate_discount(price, 10) AS discount_amount
FROM products;