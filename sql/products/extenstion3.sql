SELECT directors.name AS director, COUNT(films.film_id) AS number_of_films
FROM directors
LEFT JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name, directors.director_id;
