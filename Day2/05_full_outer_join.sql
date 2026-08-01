-- ======================================
-- FULL OUTER JOIN
-- Returns all rows from both tables
-- ======================================

-- 1. Employee and Department
SELECT employee_name, department_name
FROM employees
FULL OUTER JOIN departments
ON employees.department_id = departments.department_id;

--------------------------------------------------------

-- 2. Employee + Salary + Department
SELECT employee_name, salary, department_name
FROM employees
FULL OUTER JOIN departments
ON employees.department_id = departments.department_id;

--------------------------------------------------------

-- 3. Unmatched Records
SELECT employee_name, department_name
FROM employees
FULL OUTER JOIN departments
ON employees.department_id = departments.department_id
WHERE employee_name IS NULL
OR department_name IS NULL;

--------------------------------------------------------

-- 4. Sort by Department Name
SELECT employee_name, department_name
FROM employees
FULL OUTER JOIN departments
ON employees.department_id = departments.department_id
ORDER BY department_name;