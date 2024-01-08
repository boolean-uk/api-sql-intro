-- EXTENSION 2
SELECT name, title FROM films_with_directors
INNER JOIN directors ON films_with_directors.director_id = directors.id

-- EXTENSION 3
SELECT name, COUNT(director_id) FROM directors
INNER JOIN films_with_directors ON films_with_directors.director_id = directors.id
GROUP BY directors.name