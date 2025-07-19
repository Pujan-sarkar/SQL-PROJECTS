-- Database: RetailNexus
CREATE DATABASE IF NOT EXISTS RetailNexus;
USE RetailNexus;

CREATE TABLE Customer (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(20),
  address TEXT,
  registration_date DATE
);

CREATE TABLE Category (
  category_id INT PRIMARY KEY AUTO_INCREMENT,
  category_name VARCHAR(100) UNIQUE
);

CREATE TABLE Supplier (
  supplier_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  contact_email VARCHAR(100),
  phone VARCHAR(20)
);

CREATE TABLE Product (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  category_id INT,
  supplier_id INT,
  price DECIMAL(10,2),
  stock INT,
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);

CREATE TABLE Orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  order_date DATE,
  status VARCHAR(30),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE OrderDetails (
  order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  product_id INT,
  quantity INT,
  price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Payment (
  payment_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  amount DECIMAL(10,2),
  payment_date DATE,
  payment_method VARCHAR(30),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Shipping (
  shipping_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  shipped_date DATE,
  delivery_date DATE,
  status VARCHAR(50),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Review (
  review_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  product_id INT,
  rating INT,
  comment TEXT,
  review_date DATE,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
