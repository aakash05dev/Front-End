CREATE DATABASE customer;
USE customer;

CREATE TABLE customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Address VARCHAR(200),
    RegisteredDate DATE);

INSERT INTO customers
(FirstName, LastName, Email, Phone, City, Address, RegisteredDate) VALUES
('Arun', 'Kumar', 'arun@gmail.com', '9876543210', 'Chennai', 'Anna Nagar', '2026-01-10'),
('Priya', 'Devi', 'priya@gmail.com', '9876543211', 'Vellore', 'Gandhi Road', '2026-02-15'),
('Rahul', 'Raj', NULL, '9876543212', 'Chennai', 'T Nagar', '2026-03-20'),
('Divya', 'Sri', 'divya@gmail.com', '9876543213', 'Salem', 'Main Road', '2026-04-05'),
('Karthik', 'Kumar', NULL, '9876543214', 'Chennai', 'Velachery', '2026-05-12');

SELECT * FROM customers ;

DELIMITER //
CREATE PROCEDURE AddCustomer(
    IN p_FirstName VARCHAR(50),
    IN p_LastName VARCHAR(50),
    IN p_Email VARCHAR(100),
    IN p_Phone VARCHAR(15),
    IN p_City VARCHAR(50),
    IN p_Address VARCHAR(200),
    IN p_RegisteredDate DATE)
BEGIN
    INSERT INTO customers
    (FirstName, LastName, Email, Phone, City, Address, RegisteredDate)
    VALUES
    (p_FirstName, p_LastName, p_Email, p_Phone,
     p_City, p_Address, p_RegisteredDate);

END //
DELIMITER ;

CALL AddCustomer(
    'Suresh',
    'Kumar',
    'suresh@gmail.com',
    '9876543215',
    'Chennai',
    'Adyar',
    '2026-06-01');
DELIMITER //
CREATE PROCEDURE GetCustomerByID(
    IN p_CustomerID INT)
BEGIN
    SELECT *
    FROM customers
    WHERE CustomerID = p_CustomerID;
END //
DELIMITER ;

CALL GetCustomerByID(1);

DELIMITER //
CREATE PROCEDURE UpdateCustomerContact(
    IN p_CustomerID INT,
    IN p_Email VARCHAR(100),
    IN p_Phone VARCHAR(15))
BEGIN
    UPDATE customers
    SET Email = p_Email,
        Phone = p_Phone
    WHERE CustomerID = p_CustomerID;
END //
DELIMITER ;

CALL UpdateCustomerContact(
    1, 'newarun@gmail.com','9999999999');
DELIMITER //
CREATE PROCEDURE GetCustomersByCity( IN p_City VARCHAR(50))
BEGIN
    SELECT *
    FROM customers
    WHERE City = p_City;
END //
DELIMITER ;

CALL GetCustomersByCity('Chennai');

DELIMITER //
CREATE PROCEDURE DeleteCustomer(  IN p_CustomerID INT)
BEGIN
    DELETE FROM customers
    WHERE CustomerID = p_CustomerID;
END //
DELIMITER ;

CALL DeleteCustomer(5);

DELIMITER //
CREATE PROCEDURE GetCustomersByDate(IN p_StartDate DATE, IN p_EndDate DATE)
BEGIN
    SELECT *
    FROM customers
    WHERE RegisteredDate
    BETWEEN p_StartDate AND p_EndDate;
END //
DELIMITER ;

CALL GetCustomersByDate('2026-01-01', '2026-04-30');
DELIMITER //
CREATE PROCEDURE SearchCustomer(IN p_Name VARCHAR(50))
BEGIN
    SELECT *
    FROM customers
    WHERE FirstName LIKE CONCAT('%', p_Name, '%')
       OR LastName LIKE CONCAT('%', p_Name, '%');
END //
DELIMITER ;

CALL SearchCustomer('Kum');

DELIMITER //
CREATE PROCEDURE UpdateCustomerAddress( IN p_CustomerID INT, IN p_Address VARCHAR(200))
BEGIN
    UPDATE customers
    SET Address = p_Address
    WHERE CustomerID = p_CustomerID;
END //
DELIMITER ;

CALL UpdateCustomerAddress(1,'New Address, Chennai');
DELIMITER //
CREATE PROCEDURE GetCustomerCount()
BEGIN
    SELECT COUNT(*) AS TotalCustomers
    FROM customers;
END //
DELIMITER ;

CALL GetCustomerCount();

DELIMITER //
CREATE PROCEDURE GetCustomersWithoutEmail()
BEGIN
    SELECT *
    FROM customers
    WHERE Email IS NULL
       OR Email = '';
END //
DELIMITER ;

CALL GetCustomersWithoutEmail();