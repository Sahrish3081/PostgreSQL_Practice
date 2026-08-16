-- ==========================================
-- SERIAL
-- ==========================================

/*
Definition:
SERIAL is a PostgreSQL pseudo-data type
that automatically generates sequential
integer values for a column.
*/

-- ==========================================
-- Example
-- ==========================================

CREATE TABLE students
(
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    age INTEGER
);

------------------------------------------------

-- Insert Records

INSERT INTO students(student_name, age)
VALUES
('Ali', 20),
('Sara', 21),
('Ahmed', 22);

------------------------------------------------

-- View Data

SELECT *
FROM students;

------------------------------------------------

-- View Table Structure

\d students

------------------------------------------------

-- Types of SERIAL

/*
SMALLSERIAL
SERIAL
BIGSERIAL
*/

------------------------------------------------

-- Interview Questions

/*
Q1. What is SERIAL?

Answer:
SERIAL is a PostgreSQL pseudo-data type
used to generate auto-incrementing integers.

----------------------------------------

Q2. Is SERIAL a real data type?

Answer:
No.
It is a pseudo-data type that creates
an INTEGER column with an associated sequence.

----------------------------------------

Q3. Why do we use SERIAL?

Answer:
To automatically generate unique IDs
without manually providing values.
*/