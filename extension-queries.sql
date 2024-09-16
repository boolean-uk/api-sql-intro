
    -- Extension 1

-- Return the average film rating
SELECT ROUND(AVG(score), 2) AS average_score
FROM films;

-- Return the total number of films
SELECT COUNT(title) AS number_of_films
FROM films

-- Return the average film rating by genre
SELECT genre, AVG(score) AS average_score
FROM films
GROUP BY genre;


    -- Extension 2

SELECT title AS movie, name AS director
FROM films JOIN directors
ON films.director_id = directors.id;


    -- Extension 3

SELECT name AS director, COUNT(title) AS number_of_movies
FROM films JOIN directors
ON films.director_id = directors.id
GROUP BY director;