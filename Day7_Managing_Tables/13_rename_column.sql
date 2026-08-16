-- ==========================================
-- Rename Column
-- ==========================================

/*
Definition:
RENAME COLUMN changes the name
of an existing column.
*/

-- ==========================================
-- Syntax
-- ==========================================

ALTER TABLE table_name
RENAME COLUMN old_column_name
TO new_column_name;

------------------------------------------------

-- Example 1

ALTER TABLE employees
RENAME COLUMN employee_name
TO full_name;

------------------------------------------------

-- Example 2

ALTER TABLE employees
RENAME COLUMN email
TO employee_email;

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
Q1. What is RENAME COLUMN?

Answer:
It changes the name of
an existing column.

----------------------------------------

Q2. Does renaming a column
delete its data?

Answer:
No.
Only the column name changes.

----------------------------------------

Q3. Which command is used
to rename a column?

Answer:

ALTER TABLE table_name
RENAME COLUMN old_column_name
TO new_column_name;
*/