# Day 4 - Set Operations & CTE

---

# 1. Set Operations

Set Operations are used to combine the results of two or more SELECT statements.

Types:

- UNION
- UNION ALL
- INTERSECT
- EXCEPT

---

# 2. UNION

## Definition

UNION combines the results of two or more SELECT statements and removes duplicate rows.

## Syntax

```sql
SELECT column_list
FROM table1

UNION

SELECT column_list
FROM table2;
```

## Key Points

- Removes duplicate rows.
- Both SELECT statements must have:
  - Same number of columns
  - Same order of columns
  - Compatible data types

---

# 3. UNION ALL

## Definition

UNION ALL combines the results of two or more SELECT statements and keeps duplicate rows.

## Syntax

```sql
SELECT column_list
FROM table1

UNION ALL

SELECT column_list
FROM table2;
```

## Key Points

- Keeps duplicate rows.
- Faster than UNION.
- No duplicate checking.

---

# Difference: UNION vs UNION ALL

| UNION | UNION ALL |
|--------|-----------|
| Removes duplicates | Keeps duplicates |
| Slower | Faster |
| Unique results | All records |

---

# 4. INTERSECT

## Definition

INTERSECT returns only the rows that exist in both SELECT statements.

## Syntax

```sql
SELECT column_list
FROM table1

INTERSECT

SELECT column_list
FROM table2;
```

---

# 5. EXCEPT

## Definition

EXCEPT returns rows from the first SELECT statement that do not exist in the second SELECT statement.

## Syntax

```sql
SELECT column_list
FROM table1

EXCEPT

SELECT column_list
FROM table2;
```

---

# 6. Common Table Expression (CTE)

## Definition

A CTE is a temporary result set created using the WITH clause that exists only during the execution of a query.

## Syntax

```sql
WITH cte_name AS
(
    SELECT ...
)
SELECT *
FROM cte_name;
```

## Key Points

- Makes queries easier to read.
- Improves query organization.
- Exists only for one query.

---

# 7. Recursive CTE

## Definition

A Recursive CTE is a CTE that references itself to process hierarchical or recursive data.

## Syntax

```sql
WITH RECURSIVE cte_name AS
(
    -- Anchor Query

    UNION ALL

    -- Recursive Query
)
SELECT *
FROM cte_name;
```

## Common Uses

- Employee hierarchy
- Folder structure
- Category tree
- Organization chart
- Parent-child relationships

---

# Interview Questions

## What are Set Operations?

Set Operations combine the results of two or more SELECT statements.

---

## Difference between UNION and UNION ALL?

UNION removes duplicate rows.

UNION ALL keeps duplicate rows and is faster.

---

## What is INTERSECT?

Returns only the common rows between two queries.

---

## What is EXCEPT?

Returns rows from the first query that are not present in the second query.

---

## What is a CTE?

A Common Table Expression (CTE) is a temporary named result set created using the WITH clause.

---

## What is a Recursive CTE?

A Recursive CTE references itself and is used for hierarchical or recursive data.