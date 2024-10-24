
-- Create database if not exists-- Create database if not exists
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use database
USE alx_book_store;

-- Create tables
CREATE TABLE IF NOT EXISTS Authors (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215) NOT NULL
);

CREATE TABLE IF NOT EXISTS Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(130) NOT NULL,
  author_id INT,
  price DOUBLE,
  publication_date DATE,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS Customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215) NOT NULL,
  address TEXT
);

CREATE TABLE IF NOT EXISTS Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE
);

CREATE TABLE IF NOT EXISTS Order_Details (
  orderdetailid INT PRIMARY KEY,
  order_id INT,
  book_id INT,
  quantity DOUBLE,

