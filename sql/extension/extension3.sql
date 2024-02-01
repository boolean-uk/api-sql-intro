SELECT directors.name AS director_name, COUNT(films_with_director.title) AS number_of_films_directed
	FROM films_with_director
	INNER JOIN directors
	ON films_with_director.directorId = directors.id
	GROUP BY directors.name;