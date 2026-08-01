-- ======================================
-- CROSS JOIN
-- Returns every possible combination
-- ======================================

-- 1. Employee and Department
SELECT employee_name, department_name
FROM employees
CROSS JOIN departments;

--------------------------------------------------------

-- 2. Employee + Department + Floor
SELECT employee_name,
       department_name,
       floor
FROM employees
CROSS JOIN departments;

--------------------------------------------------------

-- 3. Employee + Department + Manager
SELECT employee_name,
       department_name,
       manager_name
FROM employees
CROSS JOIN departments;

--------------------------------------------------------

-- 4. Sort Results
SELECT employee_name,
       department_name
FROM employees
CROSS JOIN departments
ORDER BY employee_name;