SELECT AVG(cast(score AS FLOAT)) AS average_score FROM films; --Return the average film rating

SELECT COUNT(*) AS num_films FROM films; --Return the total number of films

SELECT genre, AVG(cast(score AS FLOAT)) AS average_score FROM films GROUP BY genre; --Return the average film rating by genre
