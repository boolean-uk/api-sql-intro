SELECT directors.director_name,  COUNT(directorId) FROM films 
INNER JOIN directors ON directors.id = films.directorId GROUP BY directors.director_name