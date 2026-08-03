-- ======================================
-- INTERSECT Examples
-- ======================================

-- Example 1
-- Common student names

SELECT student_name
FROM students

INTERSECT

SELECT student_name
FROM alumni;

--------------------------------------------------------

-- Example 2
-- Common student names and courses

SELECT student_name, course
FROM students

INTERSECT

SELECT student_name, course
FROM alumni;

--------------------------------------------------------

-- Example 3
-- Common AI students

SELECT student_name
FROM students
WHERE course = 'AI'

INTERSECT

SELECT student_name
FROM alumni
WHERE course = 'AI';

--------------------------------------------------------

-- Example 4
-- Common Data Science students

SELECT student_name
FROM students
WHERE course = 'Data Science'

INTERSECT

SELECT student_name
FROM alumni
WHERE course = 'Data Science';

--------------------------------------------------------

-- Example 5
-- Sort the result

SELECT student_name
FROM students

INTERSECT

SELECT student_name
FROM alumni

ORDER BY student_name;