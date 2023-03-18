-- Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.

-- director name + num films
SELECT directors.director, COUNT(films.title)
FROM directors
INNER JOIN films
--look for matching columns to count
ON films.directorID = directors.directorID
--want to get the directors
GROUP BY directors.director;