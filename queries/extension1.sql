SELECT AVG(score) FROM films;

SELECT COUNT(title) FROM films;

SELECT genre, ROUND(AVG(score), 2) FROM films AS average_score
GROUP BY genre;
