/* director + film */
SELECT name ,COUNT(directors.director_id) as movies_directed FROM directors
JOIN film ON
film.director_id = directors.director_id
GROUP BY name;
