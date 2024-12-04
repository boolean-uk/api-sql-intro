SELECT directors.directorId, directors.name, COUNT(films.directorId) AS film_count
FROM films
FULL JOIN directors ON films.directorId = directors.directorId
GROUP BY directors.directorId, directors.name;
