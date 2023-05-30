-- Return the average film rating
SELECT AVG(score)::numeric(10,2) FROM films;

-- Return the total number of films
SELECT COUNT(*) FROM films;

-- Return the average film rating by genre
SELECT AVG(score)::numeric(10,2) from films GROUP BY genre;