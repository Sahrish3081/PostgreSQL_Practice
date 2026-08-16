-- ==========================================
-- ALL Operator
-- ==========================================

/*
Definition:
The ALL operator compares a value with all values
returned by a subquery.

The condition is TRUE only if every comparison is TRUE.
*/

-- ==========================================
-- Syntax
-- ==========================================

SELECT column_name
FROM table_name
WHERE column_name operator ALL
(
    SELECT column_name
    FROM table_name
);

-- ==========================================
-- Example 1
-- Find employees whose salary is greater than
-- ALL employees in the HR department.
-- ==========================================

SELECT
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.department_id
WHERE e.salary > ALL
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
-- ALL employees in the Finance department.
-- ==========================================

SELECT
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
    ON e.department_id = d2.department_id
WHERE e.salary < ALL
(
    SELECT e2.salary
    FROM employees e2
    INNER JOIN departments d2
        ON e2.department_id = d2.department_id
    WHERE d2.department_name = 'Finance'
);

-- ==========================================
-- How ALL Works
-- ==========================================

/*
Suppose the subquery returns:

60000
65000
70000

Condition:

salary > ALL (60000, 65000, 70000)

Salary = 75000

75000 > 60000  TRUE
75000 > 65000  TRUE
75000 > 70000  TRUE

Result:
Employee is returned.

--------------------------------------------

Salary = 68000

68000 > 60000 TRUE
68000 > 65000 TRUE
68000 > 70000 FALSE

Result:
Employee is NOT returned.
*/

-- ==========================================
-- Interview Questions
-- ==========================================

/*
Q1. What is the ALL operator?

Answer:
The ALL operator compares a value with every value
returned by a subquery and returns TRUE only if
all comparisons are TRUE.

------------------------------------------------

Q2. What is the difference between ANY and ALL?

ANY:
Returns TRUE if at least one comparison is TRUE.

ALL:
Returns TRUE only if every comparison is TRUE.

------------------------------------------------

Q3. Which operators can be used with ALL?

=
>
<
>=
<=
<>
*/