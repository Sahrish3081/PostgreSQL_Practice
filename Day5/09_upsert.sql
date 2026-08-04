-- ======================================
-- UPSERT Examples
-- ======================================

-- Example 1
INSERT INTO employees(email, employee_name, salary)
VALUES ('ali@gmail.com', 'Ali', 85000)
ON CONFLICT(email)
DO UPDATE
SET salary = EXCLUDED.salary;

--------------------------------------------------------

-- Example 2
INSERT INTO employees(email, employee_name, city)
VALUES ('sara@gmail.com', 'Sara', 'Lahore')
ON CONFLICT(email)
DO UPDATE
SET city = EXCLUDED.city;

--------------------------------------------------------

-- Example 3
INSERT INTO employees(email, employee_name)
VALUES ('ahmed@gmail.com', 'Ahmed')
ON CONFLICT(email)
DO NOTHING;