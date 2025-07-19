-- Trigger: Auto-update stock on new order
DELIMITER //
CREATE TRIGGER reduce_stock AFTER INSERT ON OrderDetails
FOR EACH ROW
BEGIN
  UPDATE Product SET stock = stock - NEW.quantity
  WHERE product_id = NEW.product_id;
END;
//
DELIMITER ;

-- Procedure: Calculate total revenue in a date range
DELIMITER //
CREATE PROCEDURE GetRevenueBetween(IN start_date DATE, IN end_date DATE)
BEGIN
  SELECT SUM(amount) AS total_revenue
  FROM Payment
  WHERE payment_date BETWEEN start_date AND end_date;
END;
//
DELIMITER ;