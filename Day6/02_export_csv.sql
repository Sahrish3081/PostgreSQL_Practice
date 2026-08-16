-- =====================================
-- Export Table to CSV File
-- =====================================

-- Export Complete Table

COPY employees
TO '/home/dev-s-laptop/Documents/PostgreSQL/Day6/data/employees_export.csv'
DELIMITER ','
CSV HEADER;

----------------------------------------------------

-- Export Selected Columns

COPY (
    SELECT employee_name, email, salary
    FROM employees
)
TO '/home/dev-s-laptop/Documents/PostgreSQL/Day6/data/employees_salary.csv'
DELIMITER ','
CSV HEADER;