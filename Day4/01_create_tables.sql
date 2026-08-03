-- ======================================
-- Students Table
-- ======================================

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

-- ======================================
-- Alumni Table
-- ======================================

CREATE TABLE alumni (
    alumni_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);