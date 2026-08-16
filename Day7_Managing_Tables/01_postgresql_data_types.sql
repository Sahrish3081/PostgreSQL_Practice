-- ==========================================
-- PostgreSQL Data Types
-- ==========================================

/*
Definition:
A data type defines the kind of data that can be
stored in a table column.

Choosing the correct data type helps improve:
- Data accuracy
- Storage efficiency
- Query performance
*/

-- ==========================================
-- Common PostgreSQL Data Types
-- ==========================================

-- Numeric Data Types

SMALLINT    -- Small integer (-32,768 to 32,767)
INTEGER     -- Whole numbers
BIGINT      -- Large whole numbers
DECIMAL(p,s)-- Fixed precision numbers
NUMERIC(p,s)-- Same as DECIMAL
REAL        -- Single precision floating point
DOUBLE PRECISION -- Double precision floating point

------------------------------------------------

-- Character Data Types

CHAR(n)         -- Fixed-length string
VARCHAR(n)      -- Variable-length string
TEXT            -- Unlimited length text

------------------------------------------------

-- Boolean Data Type

BOOLEAN         -- TRUE, FALSE or NULL

------------------------------------------------

-- Date and Time Data Types

DATE            -- Stores only date
TIME            -- Stores only time
TIMESTAMP       -- Stores date and time
TIMESTAMPTZ     -- Timestamp with time zone
INTERVAL        -- Time interval

------------------------------------------------

-- Binary Data Type

BYTEA           -- Binary data

------------------------------------------------

-- JSON Data Types

JSON
JSONB

------------------------------------------------

-- UUID Data Type

UUID

------------------------------------------------

-- Array Data Type

INTEGER[]
TEXT[]
VARCHAR[]

------------------------------------------------

-- Example Table

CREATE TABLE employees
(
    employee_id INTEGER,
    employee_name VARCHAR(100),
    email VARCHAR(150),
    salary DECIMAL(10,2),
    city TEXT,
    is_active BOOLEAN,
    joining_date DATE,
    created_at TIMESTAMP
);

------------------------------------------------

-- View Table Structure

\d employees

------------------------------------------------

-- View Column Information

SELECT
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'employees';

------------------------------------------------

-- Difference Between CHAR, VARCHAR and TEXT

/*
CHAR(n)
--------
Fixed length.

Example:

CHAR(10)

Value:
Ali

Stored as:
Ali_______

Uses extra spaces.

----------------------------------------

VARCHAR(n)
-----------
Variable-length string.

Stores only entered characters.

Example:

VARCHAR(100)

Value:
Ali

Stored:
Ali

----------------------------------------

TEXT
----
Unlimited length text.

No maximum size needs to be defined.

Commonly used for:
- Description
- Comments
- Notes
- Articles
*/

------------------------------------------------

-- Difference Between INTEGER and BIGINT

/*
INTEGER
--------
4 Bytes

Range:
-2,147,483,648
to
2,147,483,647

----------------------------------------

BIGINT
-------
8 Bytes

Used for very large numbers.

Example:
Banking
Social Media IDs
Large Systems
*/

------------------------------------------------

-- Difference Between DECIMAL and REAL

/*
DECIMAL / NUMERIC
-----------------
Exact values.

Example:
Money
Salary
Price

REAL / DOUBLE PRECISION
-----------------------
Approximate values.

Used for scientific calculations.

Not recommended for storing money.
*/

------------------------------------------------

-- Interview Questions

/*
Q1. What is a data type?

Answer:
A data type defines what kind of value
a column can store.

----------------------------------------

Q2. Difference between CHAR and VARCHAR?

CHAR:
Fixed length.

VARCHAR:
Variable length.

----------------------------------------

Q3. Difference between TEXT and VARCHAR?

TEXT:
Unlimited length.

VARCHAR:
Maximum length is specified.

----------------------------------------

Q4. Which data type should be used for salary?

Answer:
DECIMAL or NUMERIC.

----------------------------------------

Q5. Which data type stores TRUE or FALSE?

Answer:
BOOLEAN.
*/