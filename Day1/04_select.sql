-- ======================================
-- SELECT Examples
-- ======================================

-- Select all columns
SELECT * FROM employees;

-- Select specific columns
SELECT name, salary
FROM employees;

-- Current Date & Time
SELECT NOW();

-- Column Alias
SELECT
    name AS employee_name,
    salary AS monthly_salary
FROM employees;