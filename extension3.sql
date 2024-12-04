SELECT name, count(director_id) as films_directed
	FROM FILMS
	JOIN directors ON director_id = directors.id
  GROUP BY name;