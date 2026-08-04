-- ======================================
-- DELETE CASCADE Examples
-- ======================================

-- Parent Table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

--------------------------------------------------------

-- Child Table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
    ON DELETE CASCADE
);

--------------------------------------------------------

-- Delete Parent Record

DELETE FROM departments
WHERE department_id = 1;

-- All employees with department_id = 1
-- will be deleted automatically.