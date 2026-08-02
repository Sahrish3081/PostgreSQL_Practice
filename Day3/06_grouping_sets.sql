-- ======================================
-- GROUPING SETS Examples
-- ======================================

-- 1. Total salary by Department and City
SELECT department_name,
       city,
       SUM(salary) AS total_salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY GROUPING SETS
(
    (department_name),
    (city)
);

--------------------------------------------------------

-- 2. Employee count by Department and City
SELECT department_name,
       city,
       COUNT(*) AS total_employees
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY GROUPING SETS
(
    (department_name),
    (city)
);