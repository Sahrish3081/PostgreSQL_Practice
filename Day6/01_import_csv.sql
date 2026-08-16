CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
salary DECIMAL(10,2) NOT NULL,
city VARCHAR(100) NOT NULL,
department_id INT,
FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

------------------------------------------------

-- Step 2: Import CSV File

COPY employees
FROM '/home/dev-s-laptop/Documents/PostgreSQL/Day6/data/employees.csv'
DELIMITER ','
CSV HEADER;

------------------------------------------------

-- Step 3: Verify Imported Data

SELECT * FROM employees;