--Return the average film rating
SELECT AVG(film_score) AS "Average film score" FROM film;

--Return the total number of films
SELECT COUNT(*) AS "Total number of films" FROM film;

--Return the average film rating by genre
SELECT film_genre AS "Film genre", AVG(film_score) AS "Average film score" FROM film GROUP BY film_genre;