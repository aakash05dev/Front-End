CREATE DATABASE sample;

USE sample;

-- creating a tables --

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    CourseID INT,
    DepartmentID INT);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Duration INT);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50));

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50));

CREATE TABLE Marks (
    MarkID INT PRIMARY KEY,
    StudentID INT,
    SubjectID INT,
    Marks INT);

-- inserting a table values --

INSERT INTO Courses VALUES
(101, 'BCA', 3), (102, 'BSc Computer Science', 3),(103, 'BCom', 3);

INSERT INTO Departments VALUES
(1, 'Computer Science'),(2, 'Commerce'),(3, 'Mathematics');

INSERT INTO Students VALUES(1, 'Arun', 101, 1),(2, 'Priya', 101, 1),(3, 'Rahul', 102, 1),(4, 'Divya', 103, 2),(5, 'Karthik', 102, 1);

INSERT INTO Subjects VALUES(201, 'Java'),(202, 'Python'),(203, 'Database');

INSERT INTO Marks VALUES(1, 1, 201, 85),(2, 1, 202, 90),(3, 2, 201, 75), (4, 2, 203, 80),(5, 3, 202, 65),(6, 4, 203, 88),(7, 5, 201, 95);

-- task 1 --

SELECT
    s.StudentName,
    c.CourseName,
    d.DepartmentName,
    sub.SubjectName,
    m.Marks
FROM Students s
JOIN Courses c
    ON s.CourseID = c.CourseID
JOIN Departments d
    ON s.DepartmentID = d.DepartmentID
JOIN Marks m
    ON s.StudentID = m.StudentID
JOIN Subjects sub
    ON m.SubjectID = sub.SubjectID;
    
  -- creating tables --
  
  CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT,
    DesignationID INT);

CREATE TABLE Department (
	 DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50));

CREATE TABLE Designations (
    DesignationID INT PRIMARY KEY,
    DesignationName VARCHAR(50));

CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT,
    BasicSalary DECIMAL(10,2),
    Bonus DECIMAL(10,2));

CREATE TABLE Locations (
    LocationID INT PRIMARY KEY,
    DepartmentID INT,
    City VARCHAR(50));
    
    select * from Salaries ;
    
    -- inserting a values --
    
INSERT INTO Employees VALUES(1, 'Arun', 1, 101),(2, 'Priya', 2, 102),(3, 'Rahul', 1, 103),(4, 'Divya', 3, 104),(5, 'Karthik', 2, 101);

INSERT INTO Department VALUES(1, 'IT'),(2, 'HR'),(3, 'Finance');

INSERT INTO Designations VALUES(101, 'Developer'),(103, 'Team Leader'),(104, 'Accountant');

INSERT INTO Salaries VALUES(1, 1, 50000, 5000),(2, 2, 40000, 4000),(3, 3, 60000, 6000),(4, 4, 45000, 4500),(5, 5, 42000, 4200);

INSERT INTO Locations VALUES(1, 1, 'Chennai'),(2, 2, 'Bangalore'),(3, 3, 'Mumbai');

-- task 2 --

SELECT
    e.EmployeeName,
    d.DepartmentName,
    des.DesignationName,
    s.BasicSalary,
    s.Bonus,
    l.City
FROM Employees e
JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
JOIN Designations des
    ON e.DesignationID = des.DesignationID
JOIN Salaries s
    ON e.EmployeeID = s.EmployeeID
JOIN Locations l
    ON d.DepartmentID = l.DepartmentID;
    
    -- creating a tables --
    
    CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50));

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50));

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    CategoryID INT,
    Price DECIMAL(10,2));

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT);

-- inserting a values --

INSERT INTO Customers VALUES(1, 'Arun', 'Chennai'),(2, 'Priya', 'Vellore'),(4, 'Divya', 'Chennai');

INSERT INTO Orders VALUES(101, 1, '2026-01-10'),(102, 2, '2026-01-12'),(103, 1, '2026-02-05'),(104, 3, '2026-02-15');

INSERT INTO Categories VALUES(1, 'Electronics'),(3, 'Books');

INSERT INTO Products VALUES(201, 'Laptop', 1, 50000),(203, 'Shirt', 2, 1200);

INSERT INTO OrderDetails VALUES(1, 101, 201, 1),(2, 101, 202, 2),(3, 102, 203, 3),(4, 103, 204, 2),(5, 104, 202, 1);

-- task 3 --

SELECT
    c.CustomerName,
    o.OrderDate,
    p.ProductName,
    cat.CategoryName,
    od.Quantity,
    p.Price
FROM Customers c
JOIN Orders o
    ON c.CustomerID = o.CustomerID
JOIN OrderDetails od
    ON o.OrderID = od.OrderID
JOIN Products p
    ON od.ProductID = p.ProductID
JOIN Categories cat
    ON p.CategoryID = cat.CategoryID
    
    -- creating a tables --
    
CREATE TABLE Dept(
     DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50));
    
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Gender VARCHAR(10),
    DoctorID INT);

CREATE TABLE Doctors(
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(50),
    DepartmentID INT);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE);

CREATE TABLE Medicines (
    MedicineID INT PRIMARY KEY,
    MedicineName VARCHAR(50));

CREATE TABLE Prescriptions (
    PrescriptionID INT PRIMARY KEY,
    AppointmentID INT,
    MedicineID INT,
    Dosage VARCHAR(50));

-- inserting a values --

INSERT INTO Dept VALUES(10, 'Cardiology'),(30, 'General Medicine');

INSERT INTO Doctors VALUES(1, 'Dr. Kumar', 10),(3, 'Dr. Arun', 30);

INSERT INTO Patients VALUES(1, 'Arun', 'Male', 1),(2, 'Priya', 'Female', 2),(3, 'Rahul', 'Male', 3),(4, 'Divya', 'Female', 1);

INSERT INTO Appointments VALUES(101, 1, 1, '2026-01-10'),(103, 3, 3, '2026-02-05'),(104, 4, 1, '2026-02-20');

INSERT INTO Medicines VALUES(1, 'Paracetamol'),(2, 'Aspirin'),(3, 'Vitamin D');

INSERT INTO Prescriptions VALUES(1, 101, 1, '500mg'),(2, 102, 2, '100mg'),(3, 103, 3, '1 tablet'),(4, 104, 1, '500mg');

-- task 4 --

SELECT
    p.PatientName,
    d.DoctorName,
    dep.DepartmentName,
    a.AppointmentDate,
    m.MedicineName,
    pr.Dosage
FROM Patients p
JOIN Doctors d
    ON p.DoctorID = d.DoctorID
JOIN Dept dep
    ON d.DepartmentID = dep.DepartmentID
JOIN Appointments a
    ON p.PatientID = a.PatientID
JOIN Prescriptions pr
    ON a.AppointmentID = pr.AppointmentID
JOIN Medicines m
    ON pr.MedicineID = m.MedicineID;

    -- creating a table --
    
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    DepartmentID INT);

CREATE TABLE EmployeeProjects (
    EmployeeID INT,
    ProjectID INT,
    AssignedDate DATE
);

CREATE TABLE Managers (
    ManagerID INT PRIMARY KEY,
    ManagerName VARCHAR(50),
    DepartmentID INT);

INSERT INTO Projects VALUES(1, 'Website', 1),(2, 'Payroll System', 2),(3, 'Banking App', 3);

INSERT INTO EmployeeProjects VALUES(1, 1, '2026-01-10'),(2, 2, '2026-01-15'),(3, 1, '2026-02-01'),(4, 3, '2026-02-10'),(5, 2, '2026-02-15');

INSERT INTO Managers VALUES(101, 'John', 1),(102, 'Priya', 2),(103, 'David', 3);

-- task 5 --

SELECT
    e.EmployeeName,
    d.DepartmentName,
    p.ProjectName,
    ep.AssignedDate,
    m.ManagerName
FROM Employees e
JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
JOIN EmployeeProjects ep
    ON e.EmployeeID = ep.EmployeeID
JOIN Projects p
    ON ep.ProjectID = p.ProjectID
JOIN Managers m
    ON d.DepartmentID = m.DepartmentID;
    
    -- ///// SUBQUERY TASKS \\\\\\ --
    
    -- task 1 --
    
SELECT
    s.StudentName,
    m.Marks
FROM Students s
JOIN Marks m
    ON s.StudentID = m.StudentID
WHERE m.Marks > (
    SELECT AVG(Marks)
    FROM Marks);

-- task 2 --

SELECT
    e.EmployeeName,
    s.BasicSalary
FROM Employees e
JOIN Salaries s
    ON e.EmployeeID = s.EmployeeID
WHERE s.BasicSalary > (
    SELECT AVG(BasicSalary)
    FROM Salaries);

-- task 3 --

SELECT
    p.ProductName,
    p.Price,
    p.CategoryID
FROM Products p
WHERE p.Price > (
    SELECT AVG(p2.Price)
    FROM Products p2
    WHERE p2.CategoryID = p.CategoryID);

-- task 4 --

SELECT
    e.EmployeeName,
    s.BasicSalary,
    e.DepartmentID
FROM Employees e
JOIN Salaries s
    ON e.EmployeeID = s.EmployeeID
WHERE s.BasicSalary > (
    SELECT AVG(s2.BasicSalary)
    FROM Employees e2
    JOIN Salaries s2
        ON e2.EmployeeID = s2.EmployeeID
    WHERE e2.DepartmentID = e.DepartmentID);

-- task 5 --

SELECT
    c.CustomerID,
    c.CustomerName,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
HAVING COUNT(o.OrderID) > (
    SELECT AVG(order_count)
    FROM (
        SELECT COUNT(*) AS order_count
        FROM Orders
        GROUP BY CustomerID)
        AS customer_orders);