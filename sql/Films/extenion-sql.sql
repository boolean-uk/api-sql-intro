SELECT AVG(score) AS average_rating FROM films;
SELECT COUNT(*) AS total_films FROM films;
SELECT genre, AVG(score) AS average_rating
FROM films
GROUP BY genre;
