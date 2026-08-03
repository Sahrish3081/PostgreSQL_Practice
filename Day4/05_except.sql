-- ======================================
-- EXCEPT Examples
-- ======================================

-- Example 1
-- Students who are not Alumni

SELECT student_name
FROM students

EXCEPT

SELECT student_name
FROM alumni;

--------------------------------------------------------

-- Example 2
-- Student names and courses that are only in Students table

SELECT student_name, course
FROM students

EXCEPT

SELECT student_name, course
FROM alumni;

--------------------------------------------------------

-- Example 3
-- AI students who are not Alumni

SELECT student_name
FROM students
WHERE course = 'AI'

EXCEPT

SELECT student_name
FROM alumni
WHERE course = 'AI';

--------------------------------------------------------

-- Example 4
-- Web Development students who are not Alumni

SELECT student_name
FROM students
WHERE course = 'Web Development'

EXCEPT

SELECT student_name
FROM alumni
WHERE course = 'Web Development';

--------------------------------------------------------

-- Example 5
-- Sort the result

SELECT student_name
FROM students

EXCEPT

SELECT student_name
FROM alumni

ORDER BY student_name;