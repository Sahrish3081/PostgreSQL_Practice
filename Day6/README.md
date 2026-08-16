# Import CSV File into Table

## Definition

Import CSV means loading data from a CSV file into a PostgreSQL table.

## Syntax

```sql
COPY table_name
FROM 'file_path'
DELIMITER ','
CSV HEADER;
```

## Key Points

- `COPY FROM` imports data.
- File path must be correct.
- `CSV HEADER` skips the first row.
- The CSV column order should match the table column order.

## Interview Definition

The `COPY FROM` command is used in PostgreSQL to efficiently import data from a CSV file into a database table.

# Export Table to CSV File

## Definition

Export means saving data from a PostgreSQL table into a CSV file.

## Syntax

```sql
COPY table_name
TO 'file_path'
DELIMITER ','
CSV HEADER;
```

## Key Points

- `COPY TO` exports data.
- `HEADER` includes column names.
- `DELIMITER ','` separates values with commas.
- You can export a complete table or the result of a `SELECT` query.

## Interview Definition

The `COPY TO` command is used to export data from a PostgreSQL table into a CSV file.

# Subquery

## Definition

A subquery is a query written inside another SQL query.

## Syntax

```sql
SELECT column_name
FROM table_name
WHERE column_name operator
(
    SELECT column_name
    FROM table_name
);
```

## Key Points

- A subquery executes first.
- Its result is passed to the outer query.
- It can be used in SELECT, FROM, and WHERE clauses.
- A subquery can return one value or multiple values.

## Interview Definition

A subquery is a nested query whose result is used by an outer SQL query.