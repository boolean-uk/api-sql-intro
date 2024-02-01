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
SELECT film.title, film.genre, film.release_year, film.score, director.name AS director FROM film
    JOIN director ON film.director_id = director.id;

-- EXTENSION 3
-- returns a lists of directors along with the number of films they have directed.
SELECT director.name, COUNT(*) AS number_of_movies FROM director
    JOIN film ON director.id = film.director_id
    GROUP BY director.name;