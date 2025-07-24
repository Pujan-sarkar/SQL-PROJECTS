CREATE VIEW Daily_Covid_Summary AS
SELECT cs.report_date, sp.name AS state,
       cs.confirmed, cs.deaths, cs.recovered,
       td.total_tests, td.positive_tests,
       (td.positive_tests * 100.0 / td.total_tests) AS positivity_rate
FROM CovidStats cs
JOIN StateProvince sp ON cs.state_id = sp.state_id
JOIN TestingData td ON td.state_id = cs.state_id AND td.report_date = cs.report_date;