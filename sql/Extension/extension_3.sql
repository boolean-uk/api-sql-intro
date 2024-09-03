-- Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT directors.name, COUNT(films_with_directors)
FROM directors
INNER JOIN films_with_directors ON films_with_directors.directorid=directors.directorid
GROUP BY directors.name;