 create database constrainer;
 use constrainer;
 
-- 6. CUSTOMER AND ORDERS
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Phone VARCHAR(15)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    OrderStatus VARCHAR(20) DEFAULT 'Pending',

    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    CHECK (Amount > 0)
);

-- 7. HOSPITAL AND DOCTOR

CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(50),
    Specialization VARCHAR(50)
);

CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Age INT,
    DoctorID INT,
    Status VARCHAR(20) DEFAULT 'Active',

    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
    CHECK (Age > 0)
);



-- 8. BANK AND ACCOUNT

CREATE TABLE BankCustomer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Phone VARCHAR(15)
);

CREATE TABLE Account (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(30),
    Balance DECIMAL(12,2),
    AccountStatus VARCHAR(20) DEFAULT 'Active',

    FOREIGN KEY (CustomerID) REFERENCES BankCustomer(CustomerID),
    CHECK (Balance >= 0)
);

-- 9. LIBRARY AND BOOKS

CREATE TABLE Publisher (
    PublisherID INT PRIMARY KEY,
    PublisherName VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Book (
    BookID INT PRIMARY KEY,
    BookName VARCHAR(100),
    PublisherID INT,
    Price DECIMAL(10,2),
    AvailableCopies INT DEFAULT 1,

    FOREIGN KEY (PublisherID) REFERENCES Publisher(PublisherID),
    CHECK (Price > 0)
);


-- 10. TEACHER AND SUBJECT

CREATE TABLE Teacher (
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(50),
    Experience INT,
    CHECK (Experience >= 0)
);

CREATE TABLE Subject (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50),
    TeacherID INT,
    SubjectStatus VARCHAR(20) DEFAULT 'Available',

    FOREIGN KEY (TeacherID) REFERENCES Teacher(TeacherID)
);

-- VIEW ALL TABLES

SHOW TABLES;