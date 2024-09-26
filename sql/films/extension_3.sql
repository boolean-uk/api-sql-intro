-- Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT directors.name as director, COUNT(films.directors_id) as film_count
FROM directors
LEFT JOIN films ON directors.id = films.directors_id
GROUP BY directors.id, directors.name
ORDER BY film_count DESC;