SELECT directors.name, COUNT(films.id) 
FROM directors 
LEFT JOIN films ON directors.id = films.director_id
GROUP BY directors.name;







