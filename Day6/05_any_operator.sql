-- ==========================================
-- ANY Operator
-- ==========================================

/*
Definition:
The ANY operator compares a value with multiple values
returned by a subquery.

The condition is TRUE if at least one comparison is TRUE.
*/

-- ==========================================
-- Syntax
-- ==========================================

SELECT column_name
FROM table_name
WHERE column_name operator ANY
(
    SELECT column_name
    FROM table_name
);

-- ==========================================
-- Example 1
-- Find employees whose salary is greater than
-- ANY employee in the HR department.
-- ==========================================

SELECT
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
WHERE e.salary > ANY
(
    SELECT e2.salary
    FROM employees e2
    INNER JOIN departments d2
        ON e2.department_id = d2.department_id
    WHERE d2.department_name = 'HR'
);

-- ==========================================
-- Example 2
-- Find employees whose salary is less than
-- ANY employee in the Finance department.
-- ==========================================

SELECT
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
WHERE e.salary < ANY
(
    SELECT e2.salary
    FROM employees e2
    INNER JOIN departments d2
        ON e2.department_id = d2.department_id
    WHERE d2.department_name = 'Finance'
);

-- ==========================================
-- Example 3
-- Find employees whose department_id matches
-- ANY department_id returned by the subquery.
-- ==========================================

SELECT
    employee_name,
    department_id
FROM employees
WHERE department_id = ANY
(
    SELECT department_id
    FROM departments
);

-- ==========================================
-- How ANY Works
-- ==========================================

/*
Suppose the subquery returns:

60000
65000
70000

Condition:

salary > ANY (60000, 65000, 70000)

Employee Salary = 68000

68000 > 60000   TRUE
68000 > 65000   TRUE
68000 > 70000   FALSE

At least one comparison is TRUE.

Result:
The employee is returned.
*/

-- ==========================================
-- Difference Between IN and ANY
-- ==========================================

/*
IN
--
Checks equality only.

Example:

WHERE department_id IN (1,2,3)

---------------------------------------

ANY
---
Can be used with:

=
>
<
>=
<=
<>

Example:

WHERE salary > ANY
(
    SELECT salary
    FROM employees
);
*/

-- ==========================================
-- Interview Questions
-- ==========================================

/*
Q1. What is the ANY operator?

Answer:
The ANY operator compares a value with multiple
values returned by a subquery and returns TRUE
if at least one comparison is TRUE.

------------------------------------------------

Q2. Which operators can be used with ANY?

=
>
<
>=
<=
<>

------------------------------------------------

Q3. What is the difference between IN and ANY?

IN:
Checks only equality.

ANY:
Works with multiple comparison operators and
returns TRUE if at least one comparison succeeds.
*/