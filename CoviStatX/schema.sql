CREATE DATABASE IF NOT EXISTS CoviStatX;
USE CoviStatX;

CREATE TABLE Country (
  country_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  continent VARCHAR(50)
);

CREATE TABLE StateProvince (
  state_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  country_id INT,
  FOREIGN KEY (country_id) REFERENCES Country(country_id)
);

CREATE TABLE Population (
  pop_id INT PRIMARY KEY AUTO_INCREMENT,
  state_id INT,
  population BIGINT,
  FOREIGN KEY (state_id) REFERENCES StateProvince(state_id)
);

CREATE TABLE CovidStats (
  stat_id INT PRIMARY KEY AUTO_INCREMENT,
  state_id INT,
  report_date DATE,
  confirmed INT,
  deaths INT,
  recovered INT,
  FOREIGN KEY (state_id) REFERENCES StateProvince(state_id)
);

CREATE TABLE VaccinationData (
  vac_id INT PRIMARY KEY AUTO_INCREMENT,
  state_id INT,
  report_date DATE,
  vaccine_brand VARCHAR(100),
  doses_administered INT,
  FOREIGN KEY (state_id) REFERENCES StateProvince(state_id)
);

CREATE TABLE TestingData (
  test_id INT PRIMARY KEY AUTO_INCREMENT,
  state_id INT,
  report_date DATE,
  total_tests INT,
  positive_tests INT,
  FOREIGN KEY (state_id) REFERENCES StateProvince(state_id)
);

CREATE TABLE Alerts (
  alert_id INT PRIMARY KEY AUTO_INCREMENT,
  state_id INT,
  alert_date DATE,
  alert_type VARCHAR(100),
  message TEXT,
  FOREIGN KEY (state_id) REFERENCES StateProvince(state_id)
);