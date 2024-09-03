-- Return the average film rating
SELECT AVG(score) from films;

-- Return the total number of films
SELECT COUNT(*) from films;

-- Return the average film rating by genre
SELECT genre, AVG(score) from films GROUP BY genre;
