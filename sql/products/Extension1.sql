/*
Extension 1
Write a SQL SELECT statements to:

Return the average film rating
Return the total number of films
Return the average film rating by genre
For these, you will need to research COUNT, AVG and GROUP BY keywords in postgres.
*/

--Task 1) Return the average film rating
SELECT AVG(score) AS average_rating FROM films;

--Task 2) Return the total number of films
SELECT COUNT(*) AS total_films FROM films;

--Task 3) Return the average film rating by genre
SELECT genre, AVG(score) AS average_rating FROM films GROUP BY genre;


