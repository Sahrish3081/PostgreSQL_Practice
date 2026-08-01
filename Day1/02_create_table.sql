-- ======================================
-- Create Employees Table
-- ======================================

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    department VARCHAR(100),
    salary INT,
    city VARCHAR(50)
);