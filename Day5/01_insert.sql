-- ======================================
-- INSERT Examples
-- ======================================

-- Example 1
INSERT INTO employees(employee_name, salary, city)
VALUES ('Ahmed', 85000, 'Islamabad');

--------------------------------------------------------

-- Example 2
INSERT INTO employees(employee_name, salary, city)
VALUES ('Hina', 75000, 'Lahore');

--------------------------------------------------------

-- Example 3
INSERT INTO employees(employee_name, salary)
VALUES ('Bilal', 70000);

--------------------------------------------------------

-- Example 4
INSERT INTO employees(employee_name, salary, city)
VALUES ('Sara', 90000, 'Karachi')
RETURNING *;

--------------------------------------------------------

-- Example 5
INSERT INTO employees(employee_name, salary, city)
VALUES ('Ayesha', 82000, 'Multan')
RETURNING employee_id, employee_name;