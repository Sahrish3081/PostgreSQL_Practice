-- ==========================================
-- CREATE TABLE
-- ==========================================

/*
Definition:
CREATE TABLE is used to create
a new table in the database.
*/

-- ==========================================
-- Syntax
-- ==========================================

CREATE TABLE table_name
(
    column_name data_type constraint,
    column_name data_type constraint
);

------------------------------------------------

-- Example 1

CREATE TABLE employees
(
    employee_id INTEGER PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE
);

------------------------------------------------

-- Example 2

CREATE TABLE departments
(
    department_id INTEGER PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

------------------------------------------------

-- View Table Structure

\d employees

------------------------------------------------

-- Display Data

SELECT *
FROM employees;

------------------------------------------------

-- Remove Table

DROP TABLE employees;

------------------------------------------------

-- Interview Questions

/*
Q1. What is CREATE TABLE?

Answer:
It is used to create a new table in a database.

----------------------------------------

Q2. Why do we define data types while creating a table?

Answer:
To specify what type of data each column can store.

----------------------------------------

Q3. What is the purpose of PRIMARY KEY?

Answer:
It uniquely identifies each row in a table.
*/