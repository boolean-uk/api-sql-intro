SELECT directors.name, count(director_id) 
FROM directors
JOIN films 
ON (films.director_id = directors.id)
GROUP BY directors.name