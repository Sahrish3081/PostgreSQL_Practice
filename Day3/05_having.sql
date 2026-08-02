-- Departments with total salary greater than 200000
SELECT department_name,
       SUM(salary) AS total_salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_name
HAVING SUM(salary) > 200000;

--------------------------------------------------------

-- Departments with more than 2 employees
SELECT department_name,
       COUNT(employee_id) AS total_employees
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_name
HAVING COUNT(employee_id) > 2;

--------------------------------------------------------

-- Departments with average salary greater than 80000
SELECT department_name,
       AVG(salary) AS average_salary
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id
GROUP BY department_name
HAVING AVG(salary) > 80000;