# 🛒 RetailNexus: Scalable SQL-Based Retail Sales Management System

RetailNexus is a fully normalized, scalable, and analytics-ready SQL database project that simulates the backend of a modern online retail platform. It manages products, categories, suppliers, customers, orders, payments, shipping, and product reviews with support for complex analytical reporting and business logic.

---

## 📌 Project Highlights

- ✅ Normalized to 3NF
- ✅ Realistic data: 10+ product categories, multiple suppliers, 500+ product entries (extensible)
- ✅ Professional schema with ER-style relationships
- ✅ Handles payments, reviews, order tracking, and analytics
- ✅ Includes triggers and stored procedures for automation
- ✅ Ideal for use in portfolios, resumes, and interviews

---

## 🗂️ Features & Functionality

### 📦 Inventory & Product Management
- Product stock updates with triggers
- Product categories and supplier mapping
- Real-time low-stock alerts

### 🧾 Orders & Payments
- Order tracking (processing, shipped, delivered)
- Payment records with amount, method, and invoice mapping
- Auto-adjust stock levels after order

### 🚚 Shipping Management
- Track shipped and delivered orders
- Record shipped/delivery date and status

### 🛍️ Customer & Feedback
- Store customer info, address, registration
- Accept and analyze customer reviews and product ratings

---

## 🧠 Business Logic Implemented

| Feature                                | SQL Concept Used         |
|----------------------------------------|--------------------------|
| Revenue by Category                    | GROUP BY + JOINs         |
| Customer Lifetime Value                | Views                    |
| Product Stock Auto-Decrement           | AFTER INSERT Trigger     |
| Revenue Reports Between Dates          | Stored Procedure         |
| Top-Rated Products                     | Aggregation + Ranking    |
| Inventory Management                   | Views + WHERE filters    |

---

## 🧱 Database Schema Overview

### 👤 `Customer`
- `customer_id`, `name`, `email`, `phone`, `address`, `registration_date`

### 🛒 `Product`
- `product_id`, `name`, `category_id`, `supplier_id`, `price`, `stock`

### 📚 `Category`, 🧍‍♂️ `Supplier`
- Category: `category_id`, `category_name`
- Supplier: `supplier_id`, `name`, `contact_email`, `phone`

### 📦 `Orders`, `OrderDetails`
- Orders: `order_id`, `customer_id`, `order_date`, `status`
- OrderDetails: `order_detail_id`, `product_id`, `quantity`, `price`

### 💳 `Payment`
- `payment_id`, `order_id`, `amount`, `payment_date`, `payment_method`

### 🚚 `Shipping`
- `shipping_id`, `order_id`, `shipped_date`, `delivery_date`, `status`

### 🌟 `Review`
- `review_id`, `customer_id`, `product_id`, `rating`, `comment`, `review_date`

---

## 📊 Sample Analytical Queries

```sql
-- Top 5 Customers by Revenue
SELECT c.name, SUM(p.amount) AS total_spent
FROM Customer c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payment p ON o.order_id = p.order_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly Sales
SELECT MONTH(payment_date) AS month, SUM(amount) AS revenue
FROM Payment
GROUP BY MONTH(payment_date);

-- Top Rated Products
SELECT p.name, AVG(r.rating) AS avg_rating
FROM Product p
JOIN Review r ON p.product_id = r.product_id
GROUP BY p.name
ORDER BY avg_rating DESC
LIMIT 5;
