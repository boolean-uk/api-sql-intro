SELECT directors.id, directors.name, COUNT(films.director_id) AS film_count
FROM directors
JOIN films ON directors.id = films.director_id
GROUP BY directors.id, directors.name;