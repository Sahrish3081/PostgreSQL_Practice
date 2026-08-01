-- ======================================
-- RIGHT JOIN
-- Returns all rows from RIGHT table
-- ======================================

-- 1. Employee Name + Department Name
SELECT employee_name, department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

--------------------------------------------------------

-- 2. Department + Manager + Employee
SELECT department_name,
       manager_name,
       employee_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

--------------------------------------------------------

-- 3. Department + Floor + Employee
SELECT department_name,
       floor,
       employee_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

--------------------------------------------------------

-- 4. Departments Without Employees
SELECT department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id
WHERE employee_name IS NULL;

--------------------------------------------------------

-- 5. Show Salary with Department
SELECT employee_name,
       salary,
       department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

--------------------------------------------------------

-- 6. Sort by Department Name
SELECT employee_name,
       department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id
ORDER BY department_name;

--------------------------------------------------------

-- 7. Departments on Floor 3 or Above
SELECT department_name,
       employee_name,
       floor
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id
WHERE floor >= 3;

--------------------------------------------------------

-- 8. Manager and Employee
SELECT manager_name,
       employee_name,
       department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;

--------------------------------------------------------

-- 9. Top 5 Results
SELECT employee_name,
       department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id
LIMIT 5;

--------------------------------------------------------

-- 10. Only Unmatched Departments
SELECT department_name,
       employee_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id
WHERE employee_name IS NULL;