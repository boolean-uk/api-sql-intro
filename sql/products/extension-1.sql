SELECT AVG(score) FROM films;
SELECT COUNT(*) FROM films;
SELECT genre, AVG(score)::numeric(10,2) FROM films
GROUP BY genre;