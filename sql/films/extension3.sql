SELECT directors.name, director_id, COUNT(title)
FROM movies
INNER JOIN directors ON director_id = directors.id
GROUP BY directors.name, director_id;