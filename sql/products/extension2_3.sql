SELECT films.title, films.release_year, directors.name AS director
FROM films
INNER JOIN directors ON films.directorId = directors.id;

SELECT directors.name AS director, COUNT(films.id) AS film_count
FROM directors
LEFT JOIN films ON directors.id = films.directorId
GROUP BY directors.name
ORDER BY film_count DESC;
