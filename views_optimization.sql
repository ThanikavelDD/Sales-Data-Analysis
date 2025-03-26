 Create Index on Order Date

CREATE INDEX idx_order_date ON orders(order_date);


Create a View for Daily Sales Summary


CREATE VIEW daily_sales AS 
SELECT order_date, SUM(total_amount) AS total_sales
FROM orders
GROUP BY order_date;



View for Top Customers

CREATE VIEW top_customers AS
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;
