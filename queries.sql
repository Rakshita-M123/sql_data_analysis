-- View all customers
SELECT * FROM customers;

-- View all products
SELECT * FROM products;

-- Filter customers from Bangalore
SELECT * FROM customers
WHERE city = 'Bangalore';

-- Sort products by price
SELECT * FROM products
ORDER BY price DESC;

-- Total number of orders
SELECT COUNT(*) FROM orders;

-- Total quantity ordered by each customer
SELECT customer_id, SUM(quantity)
FROM orders
GROUP BY customer_id;

-- Join customers and orders
SELECT customers.name, orders.order_id
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id;

-- Join orders with products
SELECT orders.order_id, products.product_name, orders.quantity
FROM orders
JOIN products
ON orders.product_id = products.product_id;
