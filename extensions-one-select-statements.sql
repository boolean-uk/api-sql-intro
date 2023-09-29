SELECT AVG(score)::numeric(10,2) AS average_film_rating FROM films;
SELECT COUNT(*) as total_number_of_films FROM films;
SELECT genre, AVG(score)::numeric(10,2) AS average_film_rating FROM films GROUP BY genre;