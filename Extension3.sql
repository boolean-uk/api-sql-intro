-- Extension 3
-- Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT COUNT(films.title), directors.name AS director
FROM films
INNER JOIN directors
	ON films.directorId = directors.id
GROUP BY director;