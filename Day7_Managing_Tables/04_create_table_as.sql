-- ==========================================
-- CREATE TABLE AS
-- ==========================================

/*
Definition:
CREATE TABLE AS creates a new table
using the result of a SELECT query.
*/

-- ==========================================
-- Syntax
-- ==========================================

CREATE TABLE new_table_name AS
SELECT column_name
FROM existing_table
WHERE condition;

------------------------------------------------

-- Example 1
-- Create a backup of employees table.

CREATE TABLE employees_backup AS
SELECT *
FROM employees;

------------------------------------------------

-- Example 2
-- Create a table for IT employees.

CREATE TABLE it_employees AS
SELECT
    employee_id,
    employee_name,
    salary
FROM employees
WHERE department_id = 1;

------------------------------------------------

-- Example 3
-- Create a table using JOIN.

CREATE TABLE employee_details AS
SELECT
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id;

------------------------------------------------

-- View Data

SELECT *
FROM employee_details;

------------------------------------------------

-- View Table Structure

\d employee_details

------------------------------------------------

-- Important Notes

/*
1. Creates a new table.
2. Copies selected data.
3. Copies selected columns.
4. Does NOT copy:
   - Primary Key
   - Foreign Key
   - Constraints
   - Indexes
*/

------------------------------------------------

-- Interview Questions

/*
Q1. What is CREATE TABLE AS?

Answer:
It creates a new table from
the result of a SELECT query.

----------------------------------------

Q2. What is the difference between
SELECT INTO and CREATE TABLE AS?

Answer:
Both create a new table from a SELECT query,
but CREATE TABLE AS is the preferred
and more standard approach in PostgreSQL.

----------------------------------------

Q3. Does CREATE TABLE AS copy constraints?

Answer:
No.
It copies only the selected columns and data.
*/