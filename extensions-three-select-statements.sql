SELECT
directors.director_id,
directors.name,
COUNT(films.director_id) AS number_of_directed_films
FROM directors
INNER JOIN films
ON directors.director_id = films.director_id
GROUP BY directors.name, directors.director_id
ORDER BY directors.director_id ASC;