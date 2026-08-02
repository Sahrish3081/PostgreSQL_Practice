-- 1. Count employees in each department
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department;

------------------------------------------------

-- 2. Total salary by department
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department;

------------------------------------------------

-- 3. Average salary by department
SELECT department,
       AVG(salary)
FROM employees
GROUP BY department;

------------------------------------------------

-- 4. Highest salary in each department
SELECT department,
       MAX(salary)
FROM employees
GROUP BY department;

------------------------------------------------

-- 5. Lowest salary in each department
SELECT department,
       MIN(salary)
FROM employees
GROUP BY department;

------------------------------------------------

-- 6. Departments sorted alphabetically
SELECT department,
       COUNT(*)
FROM employees
GROUP BY department
ORDER BY department;

------------------------------------------------

-- 7. Departments sorted by total salary
SELECT department,
       SUM(salary)
FROM employees
GROUP BY department
ORDER BY SUM(salary) DESC;