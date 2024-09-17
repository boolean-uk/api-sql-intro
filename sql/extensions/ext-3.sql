--Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.

SELECT directors.director, COUNT(filmsUpdated.directorid) as "film count" from filmsUpdated

inner join directors
  on filmsUpdated.directorid = directors.directorid
GROUP BY director
ORDER BY director ASC;

