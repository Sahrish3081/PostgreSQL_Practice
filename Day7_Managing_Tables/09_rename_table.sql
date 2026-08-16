-- ==========================================
-- Rename Table
-- ==========================================

/*
Definition:
RENAME TO is used to change
the name of an existing table.
*/

-- ==========================================
-- Syntax
-- ==========================================

ALTER TABLE old_table_name
RENAME TO new_table_name;

------------------------------------------------

-- Example

ALTER TABLE employees
RENAME TO company_employees;

------------------------------------------------

-- View Tables

\dt

------------------------------------------------

-- Verify Data

SELECT *
FROM company_employees;

------------------------------------------------

-- Important Notes

/*
1. Only the table name changes.

2. Data remains unchanged.

3. Columns remain unchanged.

4. Constraints remain unchanged.
*/

------------------------------------------------

-- Interview Questions

/*
Q1. What is RENAME TO?

Answer:
It changes the name of an existing table.

----------------------------------------

Q2. Does renaming a table delete its data?

Answer:
No.
Only the table name changes.

----------------------------------------

Q3. Which command is used to rename a table?

Answer:

ALTER TABLE old_table_name
RENAME TO new_table_name;
*/