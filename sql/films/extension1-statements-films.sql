-- Return the average film rating - Query 1
SELECT avg(score) FROM films;

-- Return the total number of films - Query 2
SELECT count(*) FROM films;

-- Return the average film rating by genre - Query 3
SELECT avg(score), genre FROM films GROUP BY (genre);