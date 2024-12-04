SELECT directors.name, COUNT(films.id) AS film_count FROM directors
INNER JOIN films ON directors.id = films."directorId"
GROUP BY directors.name