-- ======================================
-- OFFSET Examples
-- ======================================

-- Skip first 3 employees
SELECT *
FROM employees
ORDER BY id
OFFSET 3;

-- Skip first 3 and return next 3
SELECT *
FROM employees
ORDER BY id
LIMIT 3
OFFSET 3;

-- Skip first 5 employees
SELECT *
FROM employees
ORDER BY id
OFFSET 5;

-- Skip highest salary and return next 2 highest salaries
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 2
OFFSET 1;