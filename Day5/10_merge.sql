-- ======================================
-- MERGE Examples
-- ======================================

-- Update existing employees and insert new ones

MERGE INTO employees AS e
USING new_employees AS n
ON e.employee_id = n.employee_id

WHEN MATCHED THEN
UPDATE
SET
    employee_name = n.employee_name,
    salary = n.salary

WHEN NOT MATCHED THEN
INSERT (
    employee_id,
    employee_name,
    salary
)
VALUES (
    n.employee_id,
    n.employee_name,
    n.salary
);

--------------------------------------------------------

-- Delete matching employees

MERGE INTO employees AS e
USING inactive_employees AS i
ON e.employee_id = i.employee_id

WHEN MATCHED THEN
DELETE;