SELECT name, COUNT(*) AS number_of_films FROM films
INNER JOIN directors ON films.director_id = directors.director_id
GROUP BY name