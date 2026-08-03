-- ======================================
-- Recursive CTE Examples
-- ======================================

-- Example 1
-- Print numbers from 1 to 5

WITH RECURSIVE numbers AS
(
    SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM numbers
    WHERE n < 5
)

SELECT *
FROM numbers;

--------------------------------------------------------

-- Example 2
-- Employee Hierarchy

WITH RECURSIVE employee_tree AS
(
    SELECT
        employee_id,
        employee_name,
        manager_id
    FROM employees
    WHERE manager_id IS NULL

    UNION ALL

    SELECT
        e.employee_id,
        e.employee_name,
        e.manager_id
    FROM employees e
    INNER JOIN employee_tree et
        ON e.manager_id = et.employee_id
)

SELECT *
FROM employee_tree;