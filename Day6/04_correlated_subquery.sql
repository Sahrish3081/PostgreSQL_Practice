-- ==========================================
-- Correlated Subquery
-- ==========================================

/*
Definition:
A correlated subquery is a subquery that depends on the outer query.
It executes once for every row processed by the outer query.
*/

-- ==========================================
-- Syntax
-- ==========================================

SELECT column_name
FROM table_name outer_table
WHERE column_name operator
(
    SELECT column_name
    FROM table_name
    WHERE column_name = outer_table.column_name
);

-- ==========================================
-- Example 1
-- Find employees whose salary is greater than
-- the average salary of their own department.
-- ==========================================

SELECT
    e.employee_name,
    e.salary,
    e.department_id
FROM employees e
WHERE e.salary >
(
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- ==========================================
-- Example 2
-- Display department name using JOIN
-- ==========================================

SELECT
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
WHERE e.salary >
(
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- ==========================================
-- How it Works
-- ==========================================

/*
Step 1:
Outer query reads one employee.

Step 2:
The subquery calculates the average salary
for that employee's department.

Step 3:
The employee's salary is compared with
the department average.

Step 4:
If salary > department average,
the employee is returned.

The subquery runs once for every employee.
*/

-- ==========================================
-- Difference Between Subquery and Correlated Subquery
-- ==========================================

/*
Subquery
---------
- Executes once.
- Independent of the outer query.
- Faster in many cases.

Correlated Subquery
-------------------
- Executes once for each row.
- Depends on the outer query.
- Often slower because it runs repeatedly.
*/

-- ==========================================
-- Interview Questions
-- ==========================================

/*
Q1. What is a Correlated Subquery?

Answer:
A correlated subquery is a subquery that references columns from the outer query
and executes once for each row processed by the outer query.

------------------------------------------------

Q2. What is the difference between a Subquery
and a Correlated Subquery?

Subquery:
- Executes once.
- Independent.

Correlated Subquery:
- Executes for every row.
- Depends on the outer query.

------------------------------------------------

Q3. When should we use a Correlated Subquery?

Answer:
Use it when each row of the outer query requires
a separate calculation or comparison based on its own data.
*/