SELECT title, directors.name, director_id
FROM movies
INNER JOIN directors ON movies.director_id = directors.id;