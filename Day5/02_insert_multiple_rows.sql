-- ======================================
-- INSERT Multiple Rows Examples
-- ======================================

-- Example 1
INSERT INTO employees(employee_name, salary, city)
VALUES
('Ali', 80000, 'Lahore'),
('Sara', 90000, 'Karachi'),
('Ahmed', 85000, 'Islamabad');

--------------------------------------------------------

-- Example 2
INSERT INTO employees(employee_name, salary, city)
VALUES
('Fatima', 75000, 'Multan'),
('Usman', 88000, 'Faisalabad')
RETURNING *;

--------------------------------------------------------

-- Example 3
INSERT INTO departments(department_name)
VALUES
('IT'),
('HR'),
('Finance'),
('Marketing');