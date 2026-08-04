# INSERT

## Definition

INSERT is used to add new rows into a table.

## Syntax

```sql
INSERT INTO table_name(column1, column2)
VALUES(value1, value2);
```

## Key Points

- Adds new records.
- Number of columns and values must match.
- Strings use single quotes.
- SERIAL columns generate IDs automatically.
- RETURNING returns inserted rows immediately.

## Interview Definition

INSERT is used to add one or more new rows into a database table.
Q2: Why is the RETURNING clause useful?
Answer: It returns the inserted row immediately, avoiding an extra SELECT query.

# INSERT Multiple Rows

## Definition

INSERT Multiple Rows is used to insert two or more rows into a table using a single INSERT statement.

## Syntax

```sql
INSERT INTO table_name(columns)
VALUES
(value1, value2),
(value3, value4),
(value5, value6);
```

## Key Points

- Inserts multiple rows in one query.
- Faster than multiple single INSERT statements.
- All rows must have the same number of values.
- Can be used with the RETURNING clause.

## Interview Definition

INSERT Multiple Rows allows multiple records to be inserted into a table using a single SQL statement.

# DELETE

## Definition

DELETE is used to remove existing rows from a table.

## Syntax

```sql
DELETE FROM table_name
WHERE condition;
```

## Key Points

- Removes rows from a table.
- Always use WHERE to delete specific rows.
- Without WHERE, all rows are deleted.
- RETURNING returns the deleted rows.

## Interview Definition

The DELETE statement removes one or more rows from a database table based on a specified condition.
# DELETE JOIN (PostgreSQL)

## Definition

DELETE JOIN removes rows from one table based on matching rows in another table.

## Syntax

```sql
DELETE FROM table1
USING table2
WHERE table1.column = table2.column
AND condition;
```

## Key Points

- PostgreSQL uses `USING` instead of `JOIN` in DELETE.
- Only the table after `DELETE FROM` is affected.
- The table in `USING` is only used for matching records.
- `RETURNING` can be used to display deleted rows.

## Real-World Example

Delete all employees who belong to the HR department.

```sql
DELETE FROM employees
USING departments
WHERE employees.department_id = departments.department_id
AND departments.department_name = 'HR';
```

## Interview Questions

### Why does PostgreSQL use `USING` instead of `JOIN` in DELETE?

Because PostgreSQL's DELETE syntax is designed to delete rows from only one target table while using another table only for filtering.

### Can DELETE USING remove rows from both tables?

No. It deletes rows only from the table specified after `DELETE FROM`.

# DELETE CASCADE

## Definition

ON DELETE CASCADE automatically deletes child rows when the related parent row is deleted.

## Syntax

```sql
FOREIGN KEY (department_id)
REFERENCES departments(department_id)
ON DELETE CASCADE;
```

## Key Points

- Works with foreign keys.
- Deletes child records automatically.
- Maintains referential integrity.
- Prevents orphan records.

## Interview Definition

ON DELETE CASCADE is a foreign key option that automatically removes related child rows when the referenced parent row is deleted.

# Delete Duplicate Rows

## Definition

Delete Duplicate Rows removes extra duplicate records while keeping one original record.

## Common PostgreSQL Approach

- CTE
- ROW_NUMBER()

## Steps

1. Find duplicates.
2. Assign row numbers.
3. Keep row number 1.
4. Delete rows with row number greater than 1.

## Interview Definition

Duplicate rows are commonly removed using a CTE with the ROW_NUMBER() window function.

# UPSERT

## Definition

UPSERT inserts a new row if it does not exist. If a conflict occurs, it updates the existing row.

## Syntax

```sql
INSERT INTO table_name(columns)
VALUES(values)
ON CONFLICT(column)
DO UPDATE
SET column = EXCLUDED.column;
```

## Key Points

- Combines INSERT and UPDATE.
- Uses `ON CONFLICT`.
- Conflict column must have a PRIMARY KEY or UNIQUE constraint.
- `EXCLUDED` refers to the new values being inserted.
- `DO NOTHING` ignores duplicate rows.

## Interview Definition

UPSERT is implemented in PostgreSQL using `INSERT ... ON CONFLICT`, allowing records to be inserted or updated in a single statement.

# MERGE

## Definition

MERGE synchronizes data between two tables by performing INSERT, UPDATE, or DELETE in a single statement.

## Syntax

```sql
MERGE INTO target_table
USING source_table
ON condition

WHEN MATCHED THEN
UPDATE ...

WHEN NOT MATCHED THEN
INSERT ...
```

## Key Points

- Introduced in PostgreSQL 15.
- Uses a target table and a source table.
- Can perform INSERT, UPDATE, and DELETE.
- Useful for data synchronization.

## Interview Definition

MERGE combines INSERT, UPDATE, and DELETE operations into a single SQL statement based on matching conditions between a source and a target table.


# PostgreSQL Transactions

## Definition

A PostgreSQL transaction groups multiple SQL statements into a single unit of work. Changes become permanent only after `COMMIT`.

## Syntax

```sql
BEGIN;

-- SQL Statements

COMMIT;
```

```sql
BEGIN;

-- SQL Statements

ROLLBACK;
```

## Key Points

- `BEGIN` starts a transaction.
- `COMMIT` permanently saves changes.
- `ROLLBACK` cancels all uncommitted changes.
- By default, PostgreSQL runs in auto-commit mode.

## Interview Definition

PostgreSQL transactions ensure that multiple SQL operations either complete successfully together or are completely rolled back if an error occurs.