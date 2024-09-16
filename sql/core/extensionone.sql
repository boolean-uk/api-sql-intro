--Return the average film rating
SELECT AVG(score) FROM films;
--Return the total number of films
SELECT COUNT(*) FROM films;
--Return the average film rating by genre
SELECT ROUND(AVG(score), 2), genre FROM films
GROUP BY genre;