-- ==========================================
-- ALTER TABLE
-- ==========================================

/*
Definition:
ALTER TABLE is used to modify
the structure of an existing table.
*/

-- ==========================================
-- Syntax
-- ==========================================

ALTER TABLE table_name
action;

------------------------------------------------

-- Example 1
-- Add a new column.

ALTER TABLE employees
ADD COLUMN city VARCHAR(50);

------------------------------------------------

-- Example 2
-- Change data type.

ALTER TABLE employees
ALTER COLUMN salary
TYPE DECIMAL(10,2);

------------------------------------------------

-- Example 3
-- Rename a column.

ALTER TABLE employees
RENAME COLUMN employee_name
TO full_name;

------------------------------------------------

-- Example 4
-- Drop a column.

ALTER TABLE employees
DROP COLUMN city;

------------------------------------------------

-- View Table Structure

\d employees

------------------------------------------------

-- Interview Questions

/*
Q1. What is ALTER TABLE?

Answer:
ALTER TABLE modifies the structure
of an existing table.

----------------------------------------

Q2. Can ALTER TABLE add a new column?

Answer:
Yes.

----------------------------------------

Q3. Can ALTER TABLE change a column's data type?

Answer:
Yes.

----------------------------------------

Q4. Can ALTER TABLE rename a column?

Answer:
Yes.

----------------------------------------

Q5. Does ALTER TABLE recreate the table?

Answer:
No.
It modifies the existing table.
*/