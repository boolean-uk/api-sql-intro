-- Return the average film rating
SELECT CAST(AVG(score)AS INT) FROM films;

-- Return the total number of films
SELECT COUNT(title) FROM films

-- Return the average film rating by genre
SELECT genre, CAST(AVG(score) AS INT) FROM films
GROUP BY genre

