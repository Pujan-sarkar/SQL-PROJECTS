DELIMITER //
CREATE TRIGGER HighCaseAlert
AFTER INSERT ON CovidStats
FOR EACH ROW
BEGIN
  IF NEW.confirmed > 20000 THEN
    INSERT INTO Alerts (state_id, alert_date, alert_type, message)
    VALUES (NEW.state_id, NEW.report_date, 'High Case Spike', CONCAT('Confirmed cases exceeded 20K: ', NEW.confirmed));
  END IF;
END;
//
DELIMITER ;