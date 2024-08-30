SELECT directors.name AS director, COUNT(directors.id) AS num_films
FROM films
INNER JOIN directors ON directors.id = films.director_id
GROUP BY directors.id
ORDER BY num_films DESC;
