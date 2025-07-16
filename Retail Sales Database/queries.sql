-- Total sales amount
SELECT SUM(amount) AS total_revenue FROM Payment;

-- Top customers by purchase
SELECT c.name, SUM(p.amount) AS total_spent
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payment p ON o.order_id = p.order_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- Product-wise sales
SELECT p.name, SUM(od.quantity) AS units_sold
FROM Product p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.name;

-- Inventory status
SELECT name, stock FROM Product WHERE stock < 50;