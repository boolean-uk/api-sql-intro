SELECT AVG(score) AS average_score FROM films
SELECT COUNT(title) AS total_films FROM films
SELECT genre, AVG(score) AS average_score FROM films GROUP BY genre