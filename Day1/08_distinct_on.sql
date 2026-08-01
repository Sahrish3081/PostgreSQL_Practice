-- ======================================
-- DISTINCT ON Examples
-- ======================================

-- Create Practice Table

CREATE TABLE student_scores(
    name VARCHAR(50),
    subject VARCHAR(50),
    score INT
);

INSERT INTO student_scores
VALUES
('Ali','Math',90),
('Ali','English',80),
('Ali','Physics',95),
('Sara','Math',88),
('Sara','Chemistry',91);

--------------------------------------------------

-- Highest Score of Each Student

SELECT DISTINCT ON (name)
    name,
    subject,
    score
FROM student_scores
ORDER BY name, score DESC;

--------------------------------------------------

-- Lowest Score of Each Student

SELECT DISTINCT ON (name)
    name,
    subject,
    score
FROM student_scores
ORDER BY name, score ASC;