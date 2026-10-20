create database constraintsDB;
use constraintsDB;

----------1 studebt table----------
create table Student(StudentId int primary key, StudentName varchar(30), Email varchar(20) unique, Age int, Adress varchar(40));

insert into Student values (1, 'Akash', 'akash@gmail.com', 24, 'kallakurchi');
insert into Student values (2, 'Ravi', 'ravi@gmail.com', 25, 'selam');
insert into Student values (3, 'Danny', 'danny@gmail.com', 23, 'cuddalur');
insert into Student values (4, 'Benny', 'benny@gmail.com', 22, 'madurey');
insert into Student values (5, 'Kavi', 'kavi@gmail.com', 26, 'kovai');
select * from Student;

------test duplicate email=---------
insert into Student values (1, 'Akash', 'ravi@gmail.com', 24, 'kallakurchi');

------------2. Employee1 table-----------
create table Employee1 (EmployeeId int primary key, EmployeeName varchar(30), Desg varchar(40), Email varchar(22), Salary int , phone varchar(30));

insert into Employee1 values(101, 'Akash', 'Developer', 'akash@gmail.com', 40000, '0987654321' );
insert into Employee1 values(102, 'Kumar', 'Tester', 'kumar@gmail.com', 33000, '1234567890' );
insert into Employee1 values(103, 'Bala', 'Desingner', 'bala@gmail.com', 38000, '5432126778' );
insert into Employee1 values(104, 'Mani', 'Manager', 'mani@gmail.com', 44000, '098712345' );
insert into Employee1 values(105, 'Kiran', 'Developer', 'kiran@gmail.com', 43000, '1230987654' );
select * from Employee1;

----------test duplicate Desg-----
insert into Employee1 values(101, 'Akash', 'Editor', 'akash@gmail.com', 40000, '0987654321' );

-------3. Product table-----------

create table Product(ProductId int primary key, ProductName varchar (30), ProductCode varchar(10) unique, ProdectDescription varchar(50), Price int);

insert into Product values (01, 'Laptop', 'Coo1', 'Dell Laptop', 55000);
insert into Product values (02, 'Mouse', 'Coo2', 'Wireless Mouse', 6000);
insert into Product values (03, 'Keybord', 'Coo3', 'Mechanical Keybord', 25000);
insert into Product values (04, 'Monitor', 'Coo4', '32 inch Monitor', 12000);
insert into Product values (05, 'Headphone', 'Coo5', 'Bluethooth', 3000);

select * from Product;
-------------test duplicate productcode---------
insert into Product values (06, 'Tablet', 'Coo1', 'Android Tablet', 55000);

-------------4Cpourse table-------

create table Course (CourseId int primary key, CourseName varchar(30), CorseCode varchar(10) unique, Duration varchar(20), CorseFee int);

insert into Course values (1, 'Python Full Stack', 'PY01', '6 Months', 45000);
insert into Course values (2, 'Java Full Stack', 'JAVA01', '6 Months', 50000);
insert into Course values (3, 'Web Development', 'WE01', '4 Months', 30000);
insert into Course values (4, 'Data Science', 'DS01', '6 Months', 55000);
insert into Course values (5, 'SQL', 'SQL01', '3 Months', 15000);

select * from Course;

---------test duplicate CourseCode---------
insert into Course values (1, 'Advanced Python ', 'PY01', '6 Months', 45000);

----------------------5. Users Table-----------

Create table Users (UserId int primary key, UserName varchar(30), Email Varchar(22) Unique, Password varchar(20) );

insert into Users values (01 , 'akash', 'akash@gmail.com', 'pass0910');
insert into Users values (02 , 'kumar', 'kumar@gmail.com', 'pass1234');
insert into Users values (03 , 'arun', 'arun@gmail.com', 'arun0143');
insert into Users values (04 , 'ravi', 'ravi@gmail.com', 'ravi12345');
insert into Users values (05 , 'vijay', 'vijay@gmail.com', 'vijay5');

select * from Users;

----------test duplicate username--------
insert into Users values (06 , 'arul', 'danny@gmail.com', 'danny0910');

----------test duplicate Email---------
insert into Users values (07 , 'pandi', 'akash@gmail.com', 'pass0910');





















