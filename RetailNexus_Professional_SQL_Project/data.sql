-- Categories
INSERT INTO Category (category_name) VALUES
('Electronics'), ('Footwear'), ('Clothing'), ('Accessories'),
('Home Appliances'), ('Gaming'), ('Books'), ('Beauty'), 
('Furniture'), ('Sports');

-- Suppliers
INSERT INTO Supplier (name, contact_email, phone) VALUES
('Global Traders', 'global@example.com', '9000011111'),
('Urban Retail', 'urban@example.com', '9000011112'),
('ElectroHouse', 'sales@electrohouse.com', '9000011133'),
('FashionWiz', 'support@fashionwiz.com', '9000011144'),
('BookHeaven', 'hello@bookheaven.com', '9000011155');

-- Products
INSERT INTO Product (name, category_id, supplier_id, price, stock) VALUES
('iPhone 14', 1, 1, 75000, 50),
('Smart Watch', 1, 1, 12000, 30),
('Bluetooth Speaker', 1, 3, 3500, 100),
('Running Shoes', 2, 2, 4500, 120),
('Sports Sandals', 2, 2, 1800, 60),
('T-Shirt', 3, 4, 800, 200),
('Jeans', 3, 4, 1600, 150),
('Backpack', 4, 2, 1200, 80),
('Microwave Oven', 5, 3, 9500, 25),
('PlayStation 5', 6, 3, 52000, 15),
('Gaming Mouse', 6, 3, 2000, 100),
('Novel - "The Alchemist"', 7, 5, 400, 75),
('Cookbook', 7, 5, 500, 50),
('Face Wash', 8, 2, 250, 200),
('Dining Table', 9, 1, 12000, 10),
('Treadmill', 10, 1, 30000, 5);

-- Customers
INSERT INTO Customer (name, email, phone, address, registration_date) VALUES
('Amit Shah', 'amit@example.com', '9876543210', 'Delhi', '2025-01-01'),
('Riya Mehta', 'riya@example.com', '9876543211', 'Mumbai', '2025-01-15'),
('John Doe', 'john@example.com', '9876543212', 'New York', '2025-01-20'),
('Sneha Gupta', 'sneha@example.com', '9876543213', 'Bangalore', '2025-02-05'),
('Rahul Kumar', 'rahul@example.com', '9876543214', 'Pune', '2025-02-10');

-- Orders
INSERT INTO Orders (customer_id, order_date, status) VALUES
(1, '2025-07-01', 'Delivered'),
(2, '2025-07-02', 'Shipped'),
(3, '2025-07-03', 'Delivered'),
(4, '2025-07-03', 'Delivered'),
(5, '2025-07-04', 'Processing'),
(1, '2025-07-05', 'Delivered'),
(2, '2025-07-06', 'Shipped');

-- Order Details
INSERT INTO OrderDetails (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 75000),
(1, 6, 2, 800),
(2, 2, 1, 12000),
(2, 7, 1, 1600),
(3, 4, 2, 4500),
(3, 3, 1, 3500),
(4, 8, 1, 1200),
(5, 15, 1, 12000),
(5, 16, 1, 30000),
(6, 11, 1, 2000),
(6, 10, 1, 52000),
(7, 13, 2, 500),
(7, 12, 1, 400);

-- Payments
INSERT INTO Payment (order_id, amount, payment_date, payment_method) VALUES
(1, 76600, '2025-07-01', 'Credit Card'),
(2, 13600, '2025-07-02', 'PayPal'),
(3, 12500, '2025-07-03', 'Debit Card'),
(4, 1200, '2025-07-03', 'UPI'),
(5, 42000, '2025-07-04', 'Credit Card'),
(6, 54000, '2025-07-05', 'PayPal'),
(7, 1400, '2025-07-06', 'UPI');

-- Shipping
INSERT INTO Shipping (order_id, shipped_date, delivery_date, status) VALUES
(1, '2025-07-01', '2025-07-03', 'Delivered'),
(2, '2025-07-02', NULL, 'Shipped'),
(3, '2025-07-03', '2025-07-05', 'Delivered'),
(4, '2025-07-03', '2025-07-06', 'Delivered'),
(5, '2025-07-04', NULL, 'Processing'),
(6, '2025-07-05', '2025-07-08', 'Delivered'),
(7, '2025-07-06', NULL, 'Shipped');

-- Reviews
INSERT INTO Review (customer_id, product_id, rating, comment, review_date) VALUES
(1, 1, 5, 'Amazing phone!', '2025-07-04'),
(2, 2, 4, 'Very useful smartwatch.', '2025-07-05'),
(3, 3, 5, 'Sound quality is great!', '2025-07-06'),
(4, 4, 4, 'Comfortable and durable.', '2025-07-06'),
(5, 15, 5, 'Perfect for our family dining.', '2025-07-07');
