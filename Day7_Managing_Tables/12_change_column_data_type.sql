-- ==========================================
-- Change Column Data Type
-- ==========================================

/*
Definition:
ALTER COLUMN ... TYPE changes
the data type of an existing column.
*/

-- ==========================================
-- Syntax
-- ==========================================

ALTER TABLE table_name
ALTER COLUMN column_name
TYPE new_data_type;

------------------------------------------------

-- Example 1

ALTER TABLE employees
ALTER COLUMN salary
TYPE DECIMAL(10,2);

------------------------------------------------

-- Example 2

ALTER TABLE employees
ALTER COLUMN email
TYPE TEXT;

------------------------------------------------

-- Example 3

ALTER TABLE employees
ALTER COLUMN age
TYPE BIGINT;

------------------------------------------------

-- Example using USING

ALTER TABLE employees
ALTER COLUMN salary
TYPE INTEGER
USING salary::INTEGER;

------------------------------------------------

-- View Table Structure

\d employees

------------------------------------------------

-- Interview Questions

/*
Q1. What is ALTER COLUMN TYPE?

Answer:
It changes the data type of
an existing column.

----------------------------------------

Q2. Why do we use the USING clause?

Answer:
To tell PostgreSQL how to convert
existing data to the new data type.

----------------------------------------

Q3. What happens if the existing data
cannot be converted?

Answer:
PostgreSQL returns an error.
*/