SELECT directors.director_name, COUNT(films.director_id)
FROM directors
JOIN films ON directors.director_Id = films.director_id
GROUP BY directors.director_name