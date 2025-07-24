SELECT c.name AS country, SUM(cs.confirmed) AS total_cases
FROM CovidStats cs
JOIN StateProvince sp ON cs.state_id = sp.state_id
JOIN Country c ON sp.country_id = c.country_id
GROUP BY c.name;

SELECT sp.name AS state, 
       SUM(cs.deaths) * 100.0 / SUM(cs.confirmed) AS death_rate_percent
FROM CovidStats cs
JOIN StateProvince sp ON cs.state_id = sp.state_id
GROUP BY sp.name;

SELECT sp.name AS state,
       SUM(td.positive_tests) * 100.0 / SUM(td.total_tests) AS positivity_rate
FROM TestingData td
JOIN StateProvince sp ON td.state_id = sp.state_id
GROUP BY sp.name;

SELECT sp.name AS state, SUM(vd.doses_administered) AS total_doses
FROM VaccinationData vd
JOIN StateProvince sp ON vd.state_id = sp.state_id
GROUP BY sp.name;