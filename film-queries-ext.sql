-- EXTENSION 1
-- Return the average film rating
SELECT AVG(score) AS average_rating FROM film;

-- Return the total number of films
SELECT COUNT(*) AS total_films FROM film;

-- Return the average film rating by genre
SELECT genre, AVG(score) AS average_rating FROM film 
    GROUP BY genre;

-- EXTENSION 2
-- See film-schema.sql for the updated table and director-schema.sql for the new table of directors
-- returns a list of films with their director.
SELECT title, genre, release_year, score, name AS director FROM film
    JOIN director ON film.director_id = director.id;