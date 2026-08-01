-- ======================================
-- LIMIT Examples
-- ======================================

-- First 5 Employees
SELECT *
FROM employees
LIMIT 5;

-- First 3 Employee Names
SELECT name
FROM employees
LIMIT 3;

-- Highest Salary Employee
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;

-- Top 3 Highest Salaries
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Lowest Salary Employee
SELECT *
FROM employees
ORDER BY salary ASC
LIMIT 1;

-- Top 2 Highest Paid IT Employees
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 2;

-- No Rows
SELECT *
FROM employees
LIMIT 0;