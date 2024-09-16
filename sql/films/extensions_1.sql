-- average film score
SELECT AVG(score) ::NUMERIC(10) FROM films;

-- total number of films
SELECT COUNT(id) FROM films;

-- average film score by genre
SELECT AVG(score) ::NUMERIC(10), genre FROM films
GROUP BY genre;





