-- Countries
INSERT INTO Country (name, continent) VALUES
('India', 'Asia'),
('USA', 'North America'),
('Brazil', 'South America'),
('Germany', 'Europe');

-- States / Provinces
INSERT INTO StateProvince (name, country_id) VALUES
('Maharashtra', 1),
('California', 2),
('São Paulo', 3),
('Bavaria', 4);

-- Population
INSERT INTO Population (state_id, population) VALUES
(1, 123000000),
(2, 39500000),
(3, 46000000),
(4, 13000000);

-- COVID Stats: Multiple dates per state
INSERT INTO CovidStats (state_id, report_date, confirmed, deaths, recovered) VALUES
(1, '2021-01-01', 20000, 300, 19000),
(1, '2021-01-02', 21000, 350, 19500),
(2, '2021-01-01', 25000, 500, 24000),
(2, '2021-01-02', 26000, 520, 24800),
(3, '2021-01-01', 18000, 400, 17000),
(3, '2021-01-02', 18500, 420, 17500),
(4, '2021-01-01', 9000, 150, 8700),
(4, '2021-01-02', 9500, 160, 9000);

-- Vaccination Data
INSERT INTO VaccinationData (state_id, report_date, vaccine_brand, doses_administered) VALUES
(1, '2021-01-01', 'Covaxin', 5000),
(1, '2021-01-02', 'Covishield', 6000),
(2, '2021-01-01', 'Pfizer', 7000),
(2, '2021-01-02', 'Moderna', 8000),
(3, '2021-01-01', 'CoronaVac', 4000),
(3, '2021-01-02', 'CoronaVac', 4500),
(4, '2021-01-01', 'BioNTech', 3000),
(4, '2021-01-02', 'Moderna', 3500);

-- Testing Data
INSERT INTO TestingData (state_id, report_date, total_tests, positive_tests) VALUES
(1, '2021-01-01', 100000, 20000),
(1, '2021-01-02', 110000, 21000),
(2, '2021-01-01', 120000, 25000),
(2, '2021-01-02', 125000, 26000),
(3, '2021-01-01', 90000, 18000),
(3, '2021-01-02', 95000, 19000),
(4, '2021-01-01', 80000, 9000),
(4, '2021-01-02', 85000, 9200);
