-- ======================================
-- WHERE Examples
-- ======================================

-- IT Department
SELECT *
FROM employees
WHERE department = 'IT';

-- Salary greater than 70000
SELECT *
FROM employees
WHERE salary > 70000;

-- Employees from Lahore
SELECT *
FROM employees
WHERE city = 'Lahore';

-- NULL Values
SELECT *
FROM employees
WHERE city IS NULL;

-- NOT NULL Values
SELECT *
FROM employees
WHERE city IS NOT NULL;

-- IT Employees
SELECT *
FROM employees
WHERE department='IT';

-- Salary Greater Than
SELECT *
FROM employees
WHERE salary > 70000;

-- Salary Less Than
SELECT *
FROM employees
WHERE salary < 70000;

-- AND
SELECT *
FROM employees
WHERE department='IT'
AND salary > 85000;

-- OR
SELECT *
FROM employees
WHERE department='IT'
OR department='HR';

-- NOT
SELECT *
FROM employees
WHERE NOT department='IT';

--AND OR combine 
SELECT *
FROM employees
WHERE city = 'Lahore'
AND department = 'HR'
OR department = 'IT';

SELECT *
FROM employees
WHERE city = 'Lahore'
AND (department = 'HR' OR department = 'IT');