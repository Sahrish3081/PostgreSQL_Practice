-- ======================================
-- NATURAL JOIN
-- ======================================

-- 1. Employee and Department
SELECT employee_name,
       department_name
FROM employees
NATURAL JOIN departments;

--------------------------------------------------------

-- 2. All Matching Columns
SELECT *
FROM employees
NATURAL JOIN departments;