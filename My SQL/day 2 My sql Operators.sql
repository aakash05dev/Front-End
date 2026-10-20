---- MYSQL OPERATORS

-- 1. Create Database
CREATE DATABASE schoolDB2;
USE schoolDB2;


-- 2. Create Orders Table
CREATE TABLE orders (
    id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);


-- 3. Insert 5 Orders
INSERT INTO orders VALUES
(1, 'Apple', 5, 150),
(2, 'Banana', 2, 80),
(3, 'Mango', 4, 300),
(4, 'Orange', 3, 450),
(5, 'Laptop', 1, 50000);


-- 4. Display All Orders
SELECT * FROM orders;


-- 5. Quantity Greater Than 2
SELECT * FROM orders WHERE quantity > 2;

-- 6. Price Between 100 and 500
SELECT * FROM orders WHERE price BETWEEN 100 AND 500;

-- 7. Product Name Starting With 'A'
SELECT * FROM orders WHERE product_name LIKE 'A%';

-- 8. Equal To Operator
SELECT * FROM orders WHERE quantity = 5;

-- 9. Not Equal Operator
SELECT * FROM orders WHERE price <> 80;

-- 10. Greater Than or Equal To
SELECT * FROM orders WHERE quantity >= 3;


-- 11. Less Than Operator
SELECT * FROM orders WHERE price < 500;

-- 12. Less Than or Equal To
SELECT * FROM orders WHERE quantity <= 3;

-- 13. AND Operator
SELECT * FROM orders WHERE quantity > 2 AND price < 500;

-- 14. OR Operator
SELECT * FROM orders WHERE quantity > 4 OR price > 1000;

-- 15. NOT Operator
SELECT * FROM orders WHERE NOT product_name = 'Apple';

-- 16. IN Operator
SELECT * FROM orders WHERE product_name IN ('Apple', 'Mango', 'Orange');

-- 17. NOT IN Operator
SELECT * FROM orders WHERE product_name NOT IN ('Apple', 'Banana');

-- 18. LIKE Operator
SELECT * FROM orders WHERE product_name LIKE '%a%';

-- 19. NOT LIKE Operator
SELECT * FROM orders WHERE product_name NOT LIKE 'A%';

-- 20. Arithmetic Operators

-- Addition
SELECT product_name, price + 10 AS increased_price FROM orders;

-- Subtraction
SELECT product_name, price - 10 AS decreased_price FROM orders;

-- Multiplication
SELECT product_name, quantity * price AS total_amount FROM orders;

-- Division
SELECT product_name, price / quantity AS price_per_quantity FROM orders;

-- 21. ORDER BY Operator
SELECT * FROM orders ORDER BY price ASC;

SELECT * FROM orders ORDER BY price DESC;

-- 22. Aggregate Operators
SELECT COUNT(*) AS total_orders FROM orders;

SELECT SUM(price) AS total_price FROM orders;

SELECT AVG(price) AS average_price FROM orders;

SELECT MAX(price) AS maximum_price FROM orders;

SELECT MIN(price) AS minimum_price FROM orders;