-- ======================================
-- LEFT JOIN
-- Returns all rows from LEFT table
-- and matching rows from RIGHT table
-- ======================================

-- Add a department without employees
INSERT INTO departments (department_name, floor, manager_name)
VALUES ('Research', 5, 'Mr. Zaid');

--------------------------------------------------------

-- 1. Show All Departments
SELECT department_name, employee_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id;

--------------------------------------------------------

-- 2. Department + Manager + Employee
SELECT department_name,
       manager_name,
       employee_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id;

--------------------------------------------------------

-- 3. Department + Floor + Employee
SELECT department_name,
       floor,
       employee_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id;

--------------------------------------------------------

-- 4. Departments without Employees
SELECT department_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id
WHERE employee_name IS NULL;

--------------------------------------------------------

-- 5. Employees working in each Department
SELECT department_name,
       employee_name,
       salary
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id;

--------------------------------------------------------

-- 6. Sort Departments
SELECT department_name,
       employee_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id
ORDER BY department_name;

--------------------------------------------------------

-- 7. Departments on Floor 3 or Above
SELECT department_name,
       employee_name,
       floor
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id
WHERE floor >= 3;

--------------------------------------------------------

-- 8. Managers and Employees
SELECT manager_name,
       employee_name,
       department_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id;

--------------------------------------------------------

-- 9. Top 5 Results
SELECT department_name,
       employee_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id
LIMIT 5;

--------------------------------------------------------

-- 10. Department with NULL Employees
SELECT department_name,
       employee_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id
WHERE employee_name IS NULL;