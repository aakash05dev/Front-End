-- 1. CREATE DATABASE
CREATE DATABASE schoolDB;

-- Select the database
USE schoolDB;


-- 2. CREATE TABLES (DDL)


-- Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    city VARCHAR(50)
);


-- Customer Table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    registration_date DATE
);


-- Staff Table
CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    email VARCHAR(100),
    phone VARCHAR(15)
);


-- Product Table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    quantity INT,
    supplier VARCHAR(50)
);


-- User Table
CREATE TABLE user (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100),
    role VARCHAR(30),
    created_date DATE
);


-- 3. DML OPERATIONS


-- INSERT records into Students
INSERT INTO students VALUES
(1, 'Akash', 'akash@gmail.com', 23, 'Chennai'),
(2, 'Arun', 'arun@gmail.com', 22, 'Madurai'),
(3, 'Priya', 'priya@gmail.com', 21, 'Coimbatore'),
(4, 'Kumar', 'kumar@gmail.com', 24, 'Salem'),
(5, 'Divya', 'divya@gmail.com', 22, 'Trichy');


-- INSERT records into Customer
INSERT INTO customer VALUES
(1, 'Ravi', 'ravi@gmail.com', '9876543210', 'Chennai', '2026-01-10'),
(2, 'Anu', 'anu@gmail.com', '9876543211', 'Madurai', '2026-02-15'),
(3, 'Vijay', 'vijay@gmail.com', '9876543212', 'Salem', '2026-03-20'),
(4, 'Meena', 'meena@gmail.com', '9876543213', 'Trichy', '2026-04-12'),
(5, 'Suresh', 'suresh@gmail.com', '9876543214', 'Chennai', '2026-05-18');


-- INSERT records into Staff
INSERT INTO staff VALUES
(1, 'Ramesh', 'IT', 45000, 'ramesh@gmail.com', '9000000001'),
(2, 'Priya', 'HR', 40000, 'priya@gmail.com', '9000000002'),
(3, 'Karthik', 'Finance', 50000, 'karthik@gmail.com', '9000000003'),
(4, 'Divya', 'Admin', 35000, 'divya@gmail.com', '9000000004'),
(5, 'Arun', 'IT', 48000, 'arun@gmail.com', '9000000005');


-- INSERT records into Product
INSERT INTO Product VALUES
(1, 'Laptop', 'Electronics', 55000, 10, 'Dell'),
(2, 'Keyboard', 'Accessories', 1500, 25, 'HP'),
(3, 'Mouse', 'Accessories', 800, 30, 'Logitech'),
(4, 'Monitor', 'Electronics', 12000, 15, 'Samsung'),
(5, 'Printer', 'Electronics', 18000, 8, 'Canon');


-- INSERT records into User
INSERT INTO user VALUES
(1, 'akash123', 'akash@gmail.com', 'pass123', 'Student', '2026-01-01'),
(2, 'admin01', 'admin@gmail.com', 'admin123', 'Admin', '2026-01-05'),
(3, 'staff01', 'staff@gmail.com', 'staff123', 'Staff', '2026-01-10'),
(4, 'student01', 'student@gmail.com', 'stud123', 'Student', '2026-02-01'),
(5, 'manager01', 'manager@gmail.com', 'man123', 'Manager', '2026-02-15');


-- 4. SELECT ALL STUDENTS
SELECT * FROM students;


-- Other SELECT operations
SELECT * FROM customer;
SELECT * FROM staff;
SELECT * FROM Product;
SELECT * FROM user;


-- 5. UPDATE operation
UPDATE students
SET city = 'Bangalore'
WHERE student_id = 1;


-- Check updated record
SELECT * FROM students
WHERE student_id = 1;


-- 6. DELETE operation
DELETE FROM students
WHERE student_id = 5;


-- Check students after DELETE
SELECT * FROM students;


-- 7. DDL ALTER operation
ALTER TABLE students
ADD phone VARCHAR(15);


-- View table structure
DESC students;


-- 8. DROP DATABASE
DROP DATABASE schoolDB;