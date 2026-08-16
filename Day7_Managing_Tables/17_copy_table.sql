-- ==========================================
-- Copy Table
-- ==========================================

/*
Definition:
Copy Table creates a duplicate
of an existing table.
*/

------------------------------------------------

-- Copy Structure + Data

CREATE TABLE employees_backup AS
SELECT *
FROM employees;

------------------------------------------------

SELECT *
FROM employees_backup;

------------------------------------------------

-- Copy Structure Only

CREATE TABLE employees_structure AS
SELECT *
FROM employees
WHERE FALSE;

------------------------------------------------

-- Copy Using LIKE

CREATE TABLE employees_copy
(
LIKE employees
);

------------------------------------------------

-- Copy Using LIKE INCLUDING ALL

CREATE TABLE employees_complete_copy
(
LIKE employees INCLUDING ALL
);

------------------------------------------------

-- Insert Data

INSERT INTO employees_copy
SELECT *
FROM employees;

------------------------------------------------

-- Interview Questions

/*
Q1. How do you copy
a table with data?

Answer:

CREATE TABLE new_table AS
SELECT *
FROM old_table;

----------------------------------------

Q2. How do you copy
only the structure?

Answer:

CREATE TABLE new_table AS
SELECT *
FROM old_table
WHERE FALSE;

----------------------------------------

Q3. What does LIKE INCLUDING ALL do?

Answer:
It copies structure,
constraints,
indexes,
and default values.
*/