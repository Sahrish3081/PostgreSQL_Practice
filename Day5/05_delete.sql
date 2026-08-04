-- ======================================
-- DELETE Examples
-- ======================================

-- Example 1
DELETE FROM employees
WHERE employee_name = 'Alina';

--------------------------------------------------------

-- Example 2
DELETE FROM employees
WHERE employee_id = 5;

--------------------------------------------------------

-- Example 3
DELETE FROM employees
WHERE city = 'Karachi';

--------------------------------------------------------

-- Example 4
DELETE FROM employees
WHERE salary < 60000;

--------------------------------------------------------

-- Example 5
DELETE FROM employees
WHERE employee_name = 'Fatima'
RETURNING *;