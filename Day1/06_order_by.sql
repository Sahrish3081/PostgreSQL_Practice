-- ======================================
-- ORDER BY Examples
-- ======================================

-- Salary Ascending
SELECT *
FROM employees
ORDER BY salary ASC;

-- Salary Descending
SELECT *
FROM employees
ORDER BY salary DESC;

-- City Ascending
SELECT *
FROM employees
ORDER BY city ASC;

-- NULLS FIRST
SELECT name, city
FROM employees
ORDER BY city ASC NULLS FIRST;

-- NULLS LAST
SELECT name, city
FROM employees
ORDER BY city ASC NULLS LAST;

-- IT Employees Highest Salary
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC;