-- Return the average film rating
SELECT AVG(rating) FROM films;

-- Return total number of films
SELECT Count(*) FROM films;

-- Return average film rating by genre
SELECT genre, AVG(rating) FROM films GROUP BY genre