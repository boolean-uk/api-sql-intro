SELECT directors.id, directors.first_name, directors.last_name, COUNT(films.film_id) AS movie_count
FROM directors
INNER JOIN films ON films.directorid = directors.id
GROUP BY directors.id, first_name, last_name;