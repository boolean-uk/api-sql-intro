SELECT directors.name AS director, COUNT(films.id) AS film_count
FROM directors
LEFT JOIN films ON directors.directorId = films.directorId
GROUP BY directors.directorId, directors.name
ORDER BY film_count DESC;