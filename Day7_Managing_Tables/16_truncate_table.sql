-- ==========================================
-- TRUNCATE TABLE
-- ==========================================

/*
Definition:
TRUNCATE TABLE removes all rows
from a table while keeping
its structure.
*/

-- ==========================================
-- Syntax
-- ==========================================

TRUNCATE TABLE table_name;

------------------------------------------------

-- Example

TRUNCATE TABLE employees;

------------------------------------------------

-- Restart Identity

TRUNCATE TABLE employees
RESTART IDENTITY;

------------------------------------------------

-- Truncate Multiple Tables

TRUNCATE TABLE
employees,
departments;

------------------------------------------------

-- Truncate with CASCADE

TRUNCATE TABLE employees
CASCADE;

------------------------------------------------

-- Verify

SELECT *
FROM employees;

------------------------------------------------

-- Interview Questions

/*
Q1. What is TRUNCATE TABLE?

Answer:
It removes all rows from a table
but keeps the table structure.

----------------------------------------

Q2. Can we use WHERE with TRUNCATE?

Answer:
No.

----------------------------------------

Q3. What does RESTART IDENTITY do?

Answer:
It resets SERIAL/IDENTITY values
back to the starting value.

----------------------------------------

Q4. Difference between DELETE
and TRUNCATE?

Answer:
DELETE can remove selected rows
using WHERE.
TRUNCATE removes all rows
at once.
*/