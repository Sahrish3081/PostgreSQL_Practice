-- ======================================
-- DELETE JOIN (PostgreSQL USING)
-- ======================================

-- View data before deleting
SELECT
    e.employee_name,
    e.email,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;

--------------------------------------------------------

-- Example 1
-- Delete employees from the HR department

DELETE FROM employees
USING departments
WHERE employees.department_id = departments.department_id
AND departments.department_name = 'HR';

--------------------------------------------------------

-- Example 2
-- Delete employees from the Finance department

DELETE FROM employees
USING departments
WHERE employees.department_id = departments.department_id
AND departments.department_name = 'Finance';

--------------------------------------------------------

-- Example 3
-- Delete employees from the Marketing department
-- and return deleted rows

DELETE FROM employees
USING departments
WHERE employees.department_id = departments.department_id
AND departments.department_name = 'Marketing'
RETURNING employees.*;

--------------------------------------------------------

-- Example 4
-- Delete employees from the Research department

DELETE FROM employees
USING departments
WHERE employees.department_id = departments.department_id
AND departments.department_name = 'Research';