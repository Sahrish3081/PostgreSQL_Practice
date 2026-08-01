-- ======================================
-- SELF JOIN
-- ======================================

-- Create Example Table

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    manager_id INT
);

--------------------------------------------------------

INSERT INTO employees(employee_name, manager_id)
VALUES
('Hassan', NULL),
('Ali', 1),
('Sara', 1),
('Ahmed', 2),
('Fatima', 2);

--------------------------------------------------------

-- Employee and Manager

SELECT
e.employee_name AS Employee,
m.employee_name AS Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id;

--------------------------------------------------------

-- Employees Managed by Hassan

SELECT
e.employee_name,
m.employee_name AS Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id
WHERE m.employee_name = 'Hassan';