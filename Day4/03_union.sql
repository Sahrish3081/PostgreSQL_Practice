-- ======================================
-- UNION Examples
-- ======================================

-- Example 1
-- Get all unique student names from both tables

SELECT student_name
FROM students

UNION

SELECT student_name
FROM alumni;

--------------------------------------------------------

-- Example 2
-- Get unique student names and courses

SELECT student_name, course
FROM students

UNION

SELECT student_name, course
FROM alumni;

--------------------------------------------------------

-- Example 3
-- Get all records (duplicates included)

SELECT student_name
FROM students

UNION ALL

SELECT student_name
FROM alumni;

--------------------------------------------------------

-- Example 4
-- Get all student names and courses (duplicates included)

SELECT student_name, course
FROM students

UNION ALL

SELECT student_name, course
FROM alumni;

--------------------------------------------------------

-- Example 5
-- Sort the final result

SELECT student_name
FROM students

UNION

SELECT student_name
FROM alumni

ORDER BY student_name;

--------------------------------------------------------

-- Example 6
-- Students enrolled in AI from both tables

SELECT student_name
FROM students
WHERE course = 'AI'

UNION

SELECT student_name
FROM alumni
WHERE course = 'AI';

--------------------------------------------------------

-- Example 7
-- Students enrolled in Web Development (duplicates included)

SELECT student_name
FROM students
WHERE course = 'Web Development'

UNION ALL

SELECT student_name
FROM alumni
WHERE course = 'Web Development';