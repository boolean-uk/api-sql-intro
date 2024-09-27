-- Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.

SELECT directors.name AS director_name, COUNT(films.director_id) AS num_films_directed
FROM directors
LEFT JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name
ORDER BY num_films_directed DESC;