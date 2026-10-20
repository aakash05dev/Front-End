create database sample;
use sample;


CREATE TABLE exam2 (students1 VARCHAR(50), subject VARCHAR(20), score INT);

INSERT INTO exam2 VALUES('Alice', 'Math', 90), ('Bob', 'Math', 90), 
('Charlie', 'Math', 85), ('David', 'Science', 88), ('Eva', 'Science', 88);

CREATE TABLE employees11 (emp_name VARCHAR(50), department VARCHAR(20), salary INT);
 INSERT INTO employees11 VALUES('Alex', 'IT', 7000), ('Brian', 'IT', 7000), ('Chris', 'IT', 6500), ('Diana', 'HR', 6000), ('Eva', 'HR', 5800);

CREATE TABLE orders (order_id INT,order_date DATE, amount INT);

INSERT INTO orders VALUES(1, '2024-01-01', 100), (2, '2024-01-02', 200), (3, '2024-01-03', 150), (4, '2024-01-04', 300);

CREATE TABLE monthly_sales (month VARCHAR(10), sales INT);

INSERT INTO monthly_sales VALUES('Jan', 5000), ('Feb', 6000), ('Mar', 5500), ('Apr', 7000);

---view tables 

select * from exam2 ;
select * from employees11;
 select  * from orders ;
 select * from monthly_sales ;

-- 1. Unique row number for students in each class

SELECT *, ROW_NUMBER() OVER(PARTITION BY class ORDER BY marks DESC) AS row_num FROM students1;

-- 2. Rank students in each class WITH gaps

SELECT *, RANK() OVER(PARTITION BY class ORDER BY marks DESC) AS rank_num FROM students1;

-- 3. Rank students in each class WITHOUT gaps

SELECT *, DENSE_RANK() OVER(PARTITION BY class ORDER BY marks DESC) AS dense_rank_num FROM students1;

-- 4. Average marks of each class
SELECT *, AVG(marks) OVER(PARTITION BY class) AS average_marks FROM students1;

-- 5. Highest marks in each class
SELECT *, MAX(marks) OVER(PARTITION BY class) AS highest_marks FROM students1;

-- 6. Row numbers per subject
SELECT *, ROW_NUMBER() OVER(PARTITION BY subject ORDER BY score DESC) AS row_num FROM exam2;

-- 7. Rank students per subject WITH gaps
SELECT *, RANK() OVER(PARTITION BY subject ORDER BY score DESC) AS rank_num FROM exam2;

-- 8. Rank students per subject WITHOUT gaps
SELECT *, DENSE_RANK() OVER(PARTITION BY subject ORDER BY score DESC) AS dense_rank_num FROM exam2;

-- 9. Total students in each subject
SELECT *, COUNT(*) OVER(PARTITION BY subject) AS total_students FROM exam2;

-- 10. Minimum score for each subject
SELECT *, MIN(score) OVER(PARTITION BY subject) AS minimum_score FROM exam2;

-- 11. Row numbers to employees per department
SELECT *, ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS row_num FROM employees11;

-- 12. Rank employees per department
SELECT *, RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank_num FROM employees11;

-- 13. Rank employees WITHOUT gaps
SELECT *, DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dense_rank_num FROM employees11;

-- 14. Total salary in each department
SELECT *, SUM(salary) OVER(PARTITION BY department) AS total_salary FROM employees11;

-- 15. Average salary of each department
SELECT *, AVG(salary) OVER(PARTITION BY department) AS average_salary FROM employees11;

-- 16. Row numbers based on order date
SELECT *, ROW_NUMBER() OVER(ORDER BY order_date) AS row_num FROM orders;

-- 17. Running total of order amounts
SELECT *, SUM(amount) OVER(ORDER BY order_date) AS running_total FROM orders;

-- 18. Moving average of last 2 orders
SELECT *, AVG(amount) OVER(
    ORDER BY order_date
    ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS moving_average
FROM orders;

-- 19. Maximum order amount till current row
SELECT *, MAX(amount) OVER(
    ORDER BY order_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS max_till_now
FROM orders;

-- 20. Total number of orders
SELECT *, COUNT(*) OVER() AS total_orders FROM orders;

-- 21. Row numbers based on month
SELECT *, ROW_NUMBER() OVER(
    ORDER BY FIELD(month,'Jan','Feb','Mar','Apr')) AS row_num
FROM monthly_sales;

-- 22. Previous month's sales
SELECT *, LAG(sales) OVER(
    ORDER BY FIELD(month,'Jan','Feb','Mar','Apr')) AS previous_sales
FROM monthly_sales;

-- 23. Next month's sales
SELECT *, LEAD(sales) OVER(
    ORDER BY FIELD(month,'Jan','Feb','Mar','Apr')) AS next_sales
FROM monthly_sales;

-- 24. Difference from previous month's sales
SELECT *, sales - LAG(sales) OVER(
    ORDER BY FIELD(month,'Jan','Feb','Mar','Apr')) AS difference
FROM monthly_sales;

-- 25. Cumulative sales
SELECT *, SUM(sales) OVER(
    ORDER BY FIELD(month,'Jan','Feb','Mar','Apr')) AS cumulative_sales
FROM monthly_sales;





















