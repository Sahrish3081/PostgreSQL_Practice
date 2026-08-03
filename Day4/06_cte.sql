-- ======================================
-- Common Table Expression (CTE)
-- ======================================

-- Example 1
WITH high_salary AS
(
    SELECT *
    FROM employees
    WHERE salary > 80000
)

SELECT *
FROM high_salary;

--------------------------------------------------------

-- Example 2

WITH department_salary AS
(
    SELECT department_id,
           SUM(salary) AS total_salary
    FROM employees
    GROUP BY department_id
)

SELECT *
FROM department_salary;

--------------------------------------------------------

-- Example 3

WITH department_salary AS
(
    SELECT department_id,
           SUM(salary) AS total_salary
    FROM employees
    GROUP BY department_id
)

SELECT department_name,
       total_salary
FROM department_salary
INNER JOIN departments
ON department_salary.department_id = departments.department_id;