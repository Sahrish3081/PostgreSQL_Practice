-- ======================================
-- INNER JOIN
-- Returns only matching rows from both tables
-- ======================================

-- 1. Employee Name + Department Name
SELECT employee_name, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

--------------------------------------------------------

-- 2. Employee Name + Salary + Department
SELECT employee_name, salary, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

--------------------------------------------------------

-- 3. Employees from IT Department
SELECT employee_name, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE department_name = 'IT';

--------------------------------------------------------

-- 4. Employees with Salary Greater than 80000
SELECT employee_name, salary, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE salary > 80000;

--------------------------------------------------------

-- 5. Lahore Employees
SELECT employee_name, city, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE city = 'Lahore';

--------------------------------------------------------

-- 6. Finance and HR Employees
SELECT employee_name, department_name, salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE department_name IN ('Finance','HR');

--------------------------------------------------------

-- 7. Employees with Salary Between 70000 and 90000
SELECT employee_name, salary, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE salary BETWEEN 70000 AND 90000;

--------------------------------------------------------

-- 8. Employees whose name starts with A
SELECT employee_name, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
WHERE employee_name LIKE 'A%';

--------------------------------------------------------

-- 9. Order by Salary Descending
SELECT employee_name, department_name, salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
ORDER BY salary DESC;

--------------------------------------------------------

-- 10. Top 3 Highest Paid Employees
SELECT employee_name, department_name, salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
ORDER BY salary DESC
LIMIT 3;