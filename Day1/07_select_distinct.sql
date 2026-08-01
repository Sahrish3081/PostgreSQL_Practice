-- ======================================
-- DISTINCT Examples
-- ======================================

-- Unique Departments
SELECT DISTINCT department
FROM employees;

-- Unique Cities
SELECT DISTINCT city
FROM employees;

-- Unique Department + City
SELECT DISTINCT department, city
FROM employees;

-- Unique Cities in Order
SELECT DISTINCT city
FROM employees
ORDER BY city;