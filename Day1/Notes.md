# PostgreSQL Day 1

## Topics Covered

- Create Database
- Create Table
- Insert Data
- SELECT
- WHERE
- ORDER BY
- NULLS FIRST / NULLS LAST
- DISTINCT
- DISTINCT ON
- Column Alias
- NOW()

---

## SELECT

Used to retrieve data from one or more tables.

---

## WHERE

Filters rows based on a condition.

---

## ORDER BY

Sorts rows.

ASC → Ascending

DESC → Descending

NULLS FIRST → Show NULL values first.

NULLS LAST → Show NULL values last.

---

## DISTINCT

Returns only unique values.

Example:

```sql
SELECT DISTINCT department
FROM employees;
```

---

## DISTINCT ON

PostgreSQL-specific feature.

Returns only one row from each group.

Important Rule:

ORDER BY must start with the same column used inside DISTINCT ON.

Example:

```sql
SELECT DISTINCT ON (name)
name,
subject,
score
FROM student_scores
ORDER BY name, score DESC;
```

---

## Column Alias

Gives a temporary name to a column.

Example:

```sql
SELECT salary AS monthly_salary
FROM employees;
```

---

## NOW()

Returns the current date and time of the PostgreSQL server.