-- Return the average film rating
SELECT ROUND(AVG(score), 2) FROM films
-- Return the total number of films
SELECT COUNT(*) FROM films
-- Return the average film rating by genre
SELECT genre, AVG(score) FROM films GROUP BY genre