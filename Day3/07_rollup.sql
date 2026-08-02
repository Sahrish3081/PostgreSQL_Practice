-- ======================================
-- ROLLUP Examples
-- ======================================

-- 1. Total Salary
SELECT department_name,
       city,
       SUM(salary) AS total_salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY ROLLUP(department_name, city);

--------------------------------------------------------

-- 2. Employee Count
SELECT department_name,
       city,
       COUNT(*) AS total_employees
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY ROLLUP(department_name, city);

--------------------------------------------------------

-- 3. Average Salary
SELECT department_name,
       city,
       AVG(salary) AS average_salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY ROLLUP(department_name, city);