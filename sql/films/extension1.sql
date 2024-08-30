-- Write a SQL SELECT statements to:
-- Return the average film rating
SELECT AVG(score) FROM films;

-- Return the total number of films
SELECT COUNT(*) from films;

-- Return the average film rating by genre
SELECT genre, AVG(score) FROM films GROUP BY genre;
