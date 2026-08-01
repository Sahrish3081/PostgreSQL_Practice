INNER JOIN
Returns only matching rows from both tables.
If there is no matching record, that row is not included.
Most commonly used JOIN in real-world applications.
Used when related data exists in both tables.

Example:

SELECT employee_name, department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;


LEFT JOIN
Returns all rows from the left table.
Returns matching rows from the right table.
If no matching row exists in the right table, its columns are returned as NULL.
Commonly used for finding missing or unmatched data.

Example:

SELECT department_name, employee_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id;
# RIGHT JOIN

## Definition

`RIGHT JOIN` returns **all rows from the right table** and the matching rows from the left table. If no match exists, the left table columns contain `NULL`.

## Syntax


SELECT columns
FROM left_table
RIGHT JOIN right_table
ON left_table.column = right_table.column;


## Key Points

- Returns all rows from the **right table**.
- Returns matching rows from the **left table**.
- Unmatched left table values appear as **NULL**.

## Example

sql
SELECT employee_name, department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.department_id;


## Interview Definition

**RIGHT JOIN returns all rows from the right table and matching rows from the left table. If no match exists, NULL values are returned for the left table columns.**

# FULL OUTER JOIN

## Definition

`FULL OUTER JOIN` returns **all rows from both tables**. If there is no matching row, the missing columns contain `NULL`.

## Syntax


SELECT columns
FROM table1
FULL OUTER JOIN table2
ON table1.column = table2.column;


## Key Points

- Returns all rows from both tables.
- Matching rows are combined.
- Unmatched rows contain `NULL`.

## Interview Definition

**FULL OUTER JOIN returns all rows from both tables and fills unmatched columns with NULL values.**

# CROSS JOIN

## Definition

`CROSS JOIN` returns every possible combination of rows from both tables. It does not require an `ON` condition.

## Syntax

sql
SELECT columns
FROM table1
CROSS JOIN table2;


## Key Points

- Returns all possible row combinations.
- No matching condition is required.
- Total rows = Rows in Table 1 × Rows in Table 2.

## Interview Definition

**CROSS JOIN returns the Cartesian product of two tables by combining every row of the first table with every row of the second table.**

# SELF JOIN

## Definition

A `SELF JOIN` joins a table with itself using table aliases.

## Syntax

```sql
SELECT columns
FROM table_name t1
JOIN table_name t2
ON t1.column = t2.column;
```

## Key Points

- Uses the same table twice.
- Table aliases (`e`, `m`) are required.
- Commonly used for employee-manager relationships.

## Interview Definition

A SELF JOIN is a join in which a table is joined with itself using aliases.

# NATURAL JOIN

## Definition

`NATURAL JOIN` automatically joins two tables using columns with the same name and compatible data types.

## Syntax

```sql
SELECT columns
FROM table1
NATURAL JOIN table2;
```

## Key Points

- No `ON` clause is required.
- Automatically matches common column names.
- Can produce unexpected results if new common columns are added.
- Rarely used in production code.

## Interview Definition

**NATURAL JOIN automatically joins tables based on columns with the same name and compatible data types.**