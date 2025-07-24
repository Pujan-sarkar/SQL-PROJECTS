# 🦠 CoviStatX: Advanced SQL-Based Global COVID-19 Analytics System

CoviStatX is a professional-grade SQL project designed to model and analyze real-world COVID-19 data across global regions. It leverages a fully normalized schema and powerful SQL operations to generate insights, track virus trends, and assess public health response. This system is ideal for analysts, researchers, and data engineers looking to showcase database design and analytics skills using SQL.

---

## 📌 Project Highlights

- ✅ 3NF Normalized Schema
- ✅ Regional and national COVID statistics
- ✅ Support for multiple vaccine brands and testing efforts
- ✅ Trigger-based alert system for spikes
- ✅ Advanced analytics queries and reporting views
- ✅ GitHub-ready structure with rich documentation

---

## 🧱 Schema Overview

This database schema tracks **daily COVID-19 cases**, **deaths**, **recoveries**, **vaccination**, and **testing** data globally, while enabling insights by country, state, and time.

| Table              | Description |
|-------------------|-------------|
| `Country`         | Countries and continents |
| `StateProvince`   | States or regions within countries |
| `Population`      | Regional population data |
| `CovidStats`      | Daily confirmed, death, recovery stats |
| `VaccinationData` | Vaccine brand-wise doses per state |
| `TestingData`     | Daily test data and positivity info |
| `Alerts`          | Spike detection trigger logs |

---

## 🔍 Sample Tables

### 📍 `CovidStats` (Example)

| state_id | report_date | confirmed | deaths | recovered |
|----------|-------------|-----------|--------|-----------|
| 1        | 2021-01-01  | 20000     | 300    | 19000     |
| 2        | 2021-01-01  | 25000     | 500    | 24000     |

---

### 💉 `VaccinationData` (Example)

| state_id | report_date | vaccine_brand | doses_administered |
|----------|-------------|----------------|---------------------|
| 1        | 2021-01-01  | Covaxin        | 5000                |
| 2        | 2021-01-01  | Pfizer         | 7000                |

---

### 🧪 `TestingData` (Example)

| state_id | report_date | total_tests | positive_tests |
|----------|-------------|-------------|----------------|
| 1        | 2021-01-01  | 100000      | 20000          |
| 2        | 2021-01-01  | 120000      | 25000          |

---

## 📊 Expected Analytics & Output

Here are some key queries and what they will return:

---

### 1️⃣ **Total Confirmed Cases by Country**

```sql
SELECT c.name AS country, SUM(cs.confirmed) AS total_cases
FROM CovidStats cs
JOIN StateProvince sp ON cs.state_id = sp.state_id
JOIN Country c ON sp.country_id = c.country_id
GROUP BY c.name;
