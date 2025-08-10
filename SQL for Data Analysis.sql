CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    city VARCHAR(50),
    age INT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (name, city, age) VALUES
('Alice', 'New York', 30),
('Bob', 'Chicago', 45),
('Charlie', 'Los Angeles', 28),
('David', 'New York', 35),
('Eva', 'Chicago', 40);

INSERT INTO orders (customer_id, product, quantity, price, order_date) VALUES
(1, 'Laptop', 1, 1200.00, '2025-08-01'),
(1, 'Mouse', 2, 25.00, '2025-08-03'),
(2, 'Keyboard', 1, 45.00, '2025-08-02'),
(3, 'Monitor', 2, 200.00, '2025-08-04'),
(4, 'Laptop', 1, 1150.00, '2025-08-05'),
(5, 'Mouse', 3, 20.00, '2025-08-06');

SELECT name, city, age
FROM customers
WHERE city = 'Chicago'
ORDER BY age DESC;

SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;

-- INNER JOIN: Customers with orders
SELECT c.name, o.product, o.quantity
FROM customers c
INNER JOIN orders o ON c.customer_id = o.customer_id;

-- LEFT JOIN: All customers (even if they have no orders)
SELECT c.name, o.product
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id;

-- RIGHT JOIN: All orders (even if no matching customer)
SELECT c.name, o.product
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id;
-- Customers who ordered 'Laptop'
SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE product = 'Laptop'
);
-- Total sales amount
SELECT SUM(quantity * price) AS total_sales
FROM orders;

-- Average age of customers
SELECT AVG(age) AS average_age
FROM customers;
-- Create a view showing customer sales
CREATE VIEW customer_sales AS
SELECT c.name, SUM(o.quantity * o.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- View the data
SELECT * FROM customer_sales;
-- Create index on customer_id for faster joins
CREATE INDEX idx_customer_id ON orders(customer_id);

-- Create index on city for faster filtering
CREATE INDEX idx_city ON customers(city);
