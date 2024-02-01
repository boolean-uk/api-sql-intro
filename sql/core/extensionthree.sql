-- Write a SQL SELECT statement that returns a lists of directors along with
-- the number of films they have directed.

SELECT directors.name AS director, COUNT(films.id) AS film_count
FROM directors
LEFT JOIN films ON directors.director_id = films.fk_director
GROUP BY directors.name;