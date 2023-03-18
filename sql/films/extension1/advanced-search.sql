-- Write a SQL SELECT statements to:
-- For these, you will need to research COUNT, AVG and GROUP BY keywords in postgres.

--     Return the average film rating
SELECT AVG(score) AS aggregate_description
FROM films;

--     Return the total number of films
SELECT COUNT(*) 
FROM films;

--     Return the average film rating by genre
SELECT genre, AVG(score) 
FROM films
GROUP BY genre;
