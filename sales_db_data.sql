-- Insert Customers
INSERT INTO customers (name, email, location) VALUES
('MS DHONI', 'msdcsk@gmail.com', 'TAMILNADU'),
('VIRAT KOHLI', 'vkrcb@gmail.com', 'KARNATAKA'),
('RUTURAJ GAIKWAD', 'ruturaj@gmail.com', 'MAHARASTRA'),
('SANJU SAMSON', 'sanju@gmail.com', 'KERALA');

-- Insert Products
INSERT INTO products (name, category, price) VALUES
('Laptop', 'Electronics', 1000.00),
('Phone', 'Electronics', 500.00),
('Headphones', 'Accessories', 100.00),
('Smartwatch', 'Accessories', 250.00);

-- Insert Orders
INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2024-03-01', 1500.00),
(2, '2024-03-02', 500.00),
(3, '2024-03-03', 600.00),
(4, '2024-03-04', 1000.00);

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1000.00), -- John bought 1 Laptop
(1, 2, 1, 500.00),  -- John bought 1 Phone
(2, 2, 1, 500.00),  -- Jane bought 1 Phone
(3, 3, 6, 600.00),  -- Mike bought 6 Headphones
(4, 4, 4, 1000.00); -- Sarah bought 4 Smartwatches
