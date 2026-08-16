-- ==========================================
-- Drop Column
-- ==========================================

/*
Definition:
DROP COLUMN removes a column
from an existing table.
*/

-- ==========================================
-- Syntax
-- ==========================================

ALTER TABLE table_name
DROP COLUMN column_name;

------------------------------------------------

-- Example

ALTER TABLE employees
DROP COLUMN city;

------------------------------------------------

-- Drop Column if Exists

ALTER TABLE employees
DROP COLUMN IF EXISTS city;

------------------------------------------------

-- Drop Multiple Columns

ALTER TABLE employees
DROP COLUMN phone,
DROP COLUMN address;

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
Q1. What is DROP COLUMN?

Answer:
It removes a column from an existing table.

----------------------------------------

Q2. What happens to the data?

Answer:
The column and all its data are
permanently deleted.

----------------------------------------

Q3. Why use IF EXISTS?

Answer:
It prevents an error if the column
does not exist.

----------------------------------------

Q4. Can we drop multiple columns
in one statement?

Answer:
Yes.
*/