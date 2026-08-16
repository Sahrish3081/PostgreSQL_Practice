-- =====================================
-- Subquery Examples
-- =====================================

-- Example 1

SELECT employee_name,
       salary
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);

----------------------------------------------------

-- Example 2

SELECT employee_name
FROM employees
WHERE department_id =
(
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT'
);

----------------------------------------------------

-- Subquery in FROM

SELECT *
FROM
(
    SELECT employee_name,
           salary
    FROM employees
) AS emp;

----------------------------------------------------

-- Subquery in SELECT

SELECT employee_name,
(
    SELECT AVG(salary)
    FROM employees
) AS average_salary
FROM employees;