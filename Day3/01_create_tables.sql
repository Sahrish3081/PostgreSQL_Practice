-- ======================================
-- Create Customers Table
-- ======================================

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

-- ======================================
-- Create Orders Table
-- ======================================

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2),
    order_date DATE,

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);