-- ======================================
-- FETCH Examples
-- ======================================

-- First 5 Employees
SELECT *
FROM employees
ORDER BY id
FETCH FIRST 5 ROWS ONLY;

-- Top 3 Highest Salaries
SELECT *
FROM employees
ORDER BY salary DESC
FETCH FIRST 3 ROWS ONLY;

-- Lowest Salary Employee
SELECT *
FROM employees
ORDER BY salary ASC
FETCH FIRST 1 ROW ONLY;

-- Skip First 3 Employees and Fetch Next 3
SELECT *
FROM employees
ORDER BY id
OFFSET 3
FETCH NEXT 3 ROWS ONLY;