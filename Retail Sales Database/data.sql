-- Insert More Customers
INSERT INTO Customer (name, email, phone, address) VALUES
('Amit Shah', 'amit@example.com', '9876543210', 'Delhi'),
('Riya Mehta', 'riya@example.com', '9876543211', 'Mumbai'),
('John Doe', 'john@example.com', '9876543212', 'New York'),
('Sneha Gupta', 'sneha@example.com', '9876543213', 'Bangalore'),
('Mark Lee', 'mark@example.com', '9876543214', 'London');

-- Insert More Products
INSERT INTO Product (name, category, price, stock) VALUES
('iPhone 14', 'Electronics', 75000, 20),
('Bluetooth Speaker', 'Electronics', 3500, 50),
('Running Shoes', 'Footwear', 5000, 100),
('T-Shirt', 'Clothing', 800, 200),
('Smart Watch', 'Electronics', 12000, 30),
('Backpack', 'Accessories', 1800, 75),
('Jeans', 'Clothing', 1200, 150),
('Laptop', 'Electronics', 65000, 15);

-- Insert More Orders
INSERT INTO Orders (customer_id, order_date, status) VALUES
(1, '2025-07-01', 'Delivered'),
(2, '2025-07-03', 'Shipped'),
(1, '2025-07-04', 'Processing'),
(3, '2025-07-05', 'Delivered'),
(4, '2025-07-05', 'Processing'),
(5, '2025-07-06', 'Shipped'),
(3, '2025-07-07', 'Delivered');

-- Insert More Order Details
INSERT INTO OrderDetails (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 75000),
(1, 4, 2, 800),
(2, 2, 1, 3500),
(3, 3, 1, 5000),
(4, 5, 1, 12000),
(4, 6, 1, 1800),
(5, 7, 2, 1200),
(6, 8, 1, 65000),
(6, 4, 3, 800),
(7, 1, 1, 75000),
(7, 2, 1, 3500);

-- Insert More Payments
INSERT INTO Payment (order_id, amount, payment_date, payment_method) VALUES
(1, 76600, '2025-07-02', 'Credit Card'),
(2, 3500, '2025-07-03', 'PayPal'),
(3, 5000, '2025-07-04', 'UPI'),
(4, 13800, '2025-07-05', 'Debit Card'),
(5, 2400, '2025-07-06', 'Cash on Delivery'),
(6, 67400, '2025-07-07', 'Credit Card'),
(7, 78500, '2025-07-07', 'PayPal');
