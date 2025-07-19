-- Top Customers by Spending
SELECT c.name, SUM(p.amount) AS total_spent
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payment p ON o.order_id = p.order_id
GROUP BY c.name ORDER BY total_spent DESC;

-- Best-Selling Products
SELECT pr.name, SUM(od.quantity) AS total_sold
FROM Product pr
JOIN OrderDetails od ON pr.product_id = od.product_id
GROUP BY pr.name ORDER BY total_sold DESC;

-- Monthly Revenue
SELECT MONTH(payment_date) AS month, SUM(amount) AS revenue
FROM Payment
GROUP BY MONTH(payment_date);

-- Category-wise Revenue
SELECT cat.category_name, SUM(od.price * od.quantity) AS revenue
FROM OrderDetails od
JOIN Product p ON od.product_id = p.product_id
JOIN Category cat ON p.category_id = cat.category_id
GROUP BY cat.category_name;