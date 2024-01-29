SELECT AVG(score) FROM films;

SELECT COUNT(*) FROM films;

SELECT genre, AVG(score) FROM films GROUP BY genre;