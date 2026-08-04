-- ======================================
-- PostgreSQL Transactions
-- ======================================

-- Example 1

BEGIN;

UPDATE employees
SET salary = 90000
WHERE employee_id = 1;

COMMIT;

--------------------------------------------------------

-- Example 2

BEGIN;

UPDATE employees
SET salary = 100000
WHERE employee_id = 1;

ROLLBACK;

--------------------------------------------------------

-- Example 3

BEGIN;

INSERT INTO employees(employee_name, email, salary)
VALUES ('Shan', 'shan@gmail.com', 70000);

UPDATE employees
SET salary = 95000
WHERE employee_id = 3;

DELETE FROM employees
WHERE employee_id = 6;

COMMIT;