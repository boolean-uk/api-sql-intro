SELECT 
	films.film_id,
	films.title,
	films.genre,
	films.release_year,
	films.score,
	directors.name
FROM films 
INNER JOIN directors 
ON films.director_id = directors.director_id;