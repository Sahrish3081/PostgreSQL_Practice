-- ==========================================
-- Add Column
-- ==========================================

/*
Definition:
ADD COLUMN is used to add
a new column to an existing table.
*/

-- ==========================================
-- Syntax
-- ==========================================

ALTER TABLE table_name
ADD COLUMN column_name data_type;

------------------------------------------------

-- Example 1

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

------------------------------------------------

-- Example 2

ALTER TABLE employees
ADD COLUMN city VARCHAR(50);

------------------------------------------------

-- Example 3

ALTER TABLE employees
ADD COLUMN joining_date DATE;

------------------------------------------------

-- Add Multiple Columns

ALTER TABLE employees
ADD COLUMN phone VARCHAR(20),
ADD COLUMN address TEXT;

------------------------------------------------

-- Add Column with Default Value

ALTER TABLE employees
ADD COLUMN country VARCHAR(50)
DEFAULT 'Pakistan';

------------------------------------------------

-- View Table Structure

\d employees

------------------------------------------------

-- View Data

SELECT *
FROM employees;

------------------------------------------------

-- Interview Questions

/*
Q1. What is ADD COLUMN?

Answer:
It is used to add a new column
to an existing table.

----------------------------------------

Q2. Can we add multiple columns
in one statement?

Answer:
Yes.

----------------------------------------

Q3. What happens to existing rows?

Answer:
The new column is added.
Existing rows contain NULL unless
a DEFAULT value is provided.
*/