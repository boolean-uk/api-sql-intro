SELECT directors.name, count(films.title)
FROM directors
INNER JOIN films ON directors.directorId = films.directorId
GROUP BY directors.directorId, directors.name;