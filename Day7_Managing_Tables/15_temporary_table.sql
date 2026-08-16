-- ==========================================
-- Temporary Table
-- ==========================================

/*
Definition:
A Temporary Table exists only
for the current database session.
It is automatically deleted when
the session ends.
*/

-- ==========================================
-- Syntax
-- ==========================================

CREATE TEMP TABLE table_name
(
    column_name data_type
);

------------------------------------------------

-- Example

CREATE TEMP TABLE temp_employees
(
    employee_id INTEGER,
    employee_name VARCHAR(100),
    salary DECIMAL(10,2)
);

------------------------------------------------

-- Insert Data

INSERT INTO temp_employees
(employee_id, employee_name, salary)
VALUES
(1,'Ali',50000),
(2,'Sara',60000);

------------------------------------------------

-- View Data

SELECT *
FROM temp_employees;

------------------------------------------------

-- Create Temporary Table from Existing Table

CREATE TEMP TABLE temp_it_employees AS
SELECT *
FROM employees
WHERE department_id = 1;

------------------------------------------------

SELECT *
FROM temp_it_employees;

------------------------------------------------

-- Interview Questions

/*
Q1. What is a Temporary Table?

Answer:
A Temporary Table exists only
for the current database session.

----------------------------------------

Q2. What happens when the session ends?

Answer:
The temporary table is
automatically deleted.

----------------------------------------

Q3. Can another user access
your temporary table?

Answer:
No.
Temporary tables are session-specific.
*/