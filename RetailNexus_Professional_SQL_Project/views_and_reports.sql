-- View: Customer Lifetime Value
CREATE VIEW Customer_Lifetime_Value AS
SELECT c.customer_id, c.name, SUM(p.amount) AS total_value
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payment p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.name;

-- View: Product Inventory Status
CREATE VIEW Low_Stock_Products AS
SELECT name, stock FROM Product WHERE stock < 50;