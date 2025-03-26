1 . Total Sales Revenue

SELECT SUM(total_amount) AS total_revenue FROM orders;


/////////////////


2. Best-Selling Products

SELECT p.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;


////////////////////


3.  Top Customers by Spending


SELECT c.name, SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;



///////////////////////


4. Daily Sales Report

SELECT order_date, SUM(total_amount) AS daily_sales
FROM orders
GROUP BY order_date
ORDER BY order_date;





