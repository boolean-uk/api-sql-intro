SELECT director.name, COUNT(*)
FROM films 
INNER JOIN director ON director.id=films.director_id GROUP BY director.name;