
SELECT director.name, COUNT(film.film_id) as number_of_films
FROM directors director
LEFT JOIN films film ON director.directorId = film.directorId
GROUP BY director.directorId;

