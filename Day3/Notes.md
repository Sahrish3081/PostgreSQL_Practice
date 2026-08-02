# GROUP BY

## Definition

`GROUP BY` groups rows with the same values so that aggregate functions can calculate results for each group.

## Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column)
FROM table_name
GROUP BY column_name;
```

## Aggregate Functions

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

## Rule

Every column in the `SELECT` list that is **not inside an aggregate function** must also appear in the `GROUP BY` clause.

## Interview Definition

GROUP BY groups rows based on one or more columns and is commonly used with aggregate functions to summarize data.

# HAVING

## Definition

`HAVING` filters groups after the `GROUP BY` clause.

## Syntax

```sql
SELECT column, AGGREGATE_FUNCTION(column)
FROM table
GROUP BY column
HAVING condition;
```

## Key Points

- Used with `GROUP BY`.
- Filters grouped data.
- Can use aggregate functions like `SUM()`, `COUNT()`, `AVG()`, `MIN()`, `MAX()`.

## Difference

- `WHERE` → Filters rows.
- `HAVING` → Filters groups.

## Interview Definition

HAVING filters grouped records after the GROUP BY clause.
# GROUPING SETS

## Definition

`GROUPING SETS` allows multiple `GROUP BY` operations in a single query.

## Syntax

```sql
GROUP BY GROUPING SETS (
    (column1),
    (column2)
);
```

## Key Points

- Performs multiple groupings in one query.
- Reduces the need for multiple `GROUP BY` queries.
- Commonly used for reporting.

## Interview Definition

`GROUPING SETS` generates multiple grouped result sets in a single query.

# ROLLUP

## Definition

`ROLLUP` creates hierarchical subtotals and a grand total in a single query.

## Syntax

```sql
GROUP BY ROLLUP(column1, column2);
```

## Key Points

- Creates subtotals.
- Creates a grand total.
- Used for reporting.

## Interview Definition

`ROLLUP` generates hierarchical grouping levels and a grand total in one query.

# CUBE

## Definition

`CUBE` generates all possible combinations of the specified columns, including subtotals and the grand total.

## Syntax

```sql
GROUP BY CUBE(column1, column2);
```

## Key Points

- Generates all grouping combinations.
- Creates subtotals.
- Creates a grand total.
- Commonly used in reporting and analytics.

## Interview Definition

`CUBE` generates all possible grouping combinations along with subtotals and the grand total.