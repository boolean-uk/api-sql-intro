SELECT name, COUNT(films_ex2.directorid) as movies_directed
FROM directors 
	JOIN films_ex2 
		ON directors.directorid = films_ex2.directorid
GROUP BY directors.name
ORDER BY COUNT(films_ex2.directorid) DESC