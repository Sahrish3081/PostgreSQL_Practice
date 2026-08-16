-- ==========================================
-- SELECT INTO
-- ==========================================

/*
Definition:
SELECT INTO creates a new table
from the result of a SELECT query.
*/

-- ==========================================
-- Syntax
-- ==========================================

SELECT column_name
INTO new_table_name
FROM existing_table
WHERE condition;

------------------------------------------------

-- Example 1

SELECT
    employee_id,
    employee_name,
    salary
INTO it_employees
FROM employees
WHERE department_id = 1;

------------------------------------------------

-- Example 2

SELECT *
INTO employees_backup
FROM employees;

------------------------------------------------

-- Example 3

SELECT
    employee_name,
    email
INTO employee_contacts
FROM employees;

------------------------------------------------

-- Display Data

SELECT *
FROM employees_backup;

------------------------------------------------

-- View Table Structure

\d employees_backup

------------------------------------------------

-- Important Notes

/*
1. The new table must not already exist.

2. Columns and data are copied.

3. Constraints, indexes, primary keys,
   and foreign keys are NOT copied.
*/

------------------------------------------------

-- Interview Questions

/*
Q1. What is SELECT INTO?

Answer:
It creates a new table from
the result of a SELECT query.

----------------------------------------

Q2. Does SELECT INTO copy constraints?

Answer:
No.
It copies only the selected columns
and data.

----------------------------------------

Q3. When do we use SELECT INTO?

Answer:
To create a backup table
or store query results
in a new table.
*/