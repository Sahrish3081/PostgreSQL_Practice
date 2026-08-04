-- ======================================
-- Find Duplicate Rows
-- ======================================

SELECT
    employee_name,
    email,
    COUNT(*) AS total_records
FROM employees
GROUP BY employee_name, email
HAVING COUNT(*) > 1;

--------------------------------------------------------

-- Delete Duplicate Rows

WITH duplicate_rows AS (
    SELECT
        employee_id,
        ROW_NUMBER() OVER (
            PARTITION BY employee_name, email
            ORDER BY employee_id
        ) AS row_num
    FROM employees
)

DELETE FROM employees
WHERE employee_id IN (
    SELECT employee_id
    FROM duplicate_rows
    WHERE row_num > 1
);