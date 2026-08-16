-- ==========================================
-- DROP TABLE
-- ==========================================

/*
Definition:
DROP TABLE permanently removes
a table and all of its data
from the database.
*/

-- ==========================================
-- Syntax
-- ==========================================

DROP TABLE table_name;

------------------------------------------------

-- Example

DROP TABLE products;

------------------------------------------------

-- Drop if Exists

DROP TABLE IF EXISTS products;

------------------------------------------------

-- Drop Multiple Tables

DROP TABLE
employees,
departments;

------------------------------------------------

-- Drop with CASCADE

DROP TABLE departments CASCADE;

------------------------------------------------

-- View Tables

\dt

------------------------------------------------

-- Interview Questions

/*
Q1. What is DROP TABLE?

Answer:
It permanently removes a table
and all of its data.

----------------------------------------

Q2. What is the purpose of IF EXISTS?

Answer:
It prevents an error if the table
does not exist.

----------------------------------------

Q3. What does CASCADE do?

Answer:
It also removes dependent objects
such as foreign key relationships.

----------------------------------------

Q4. Can DROP TABLE be undone?

Answer:
No.
Unless you have a backup.
*/