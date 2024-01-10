SELECT name, count(*) from films 
JOIN directors ON directors.id = films.director_id
GROUP BY name;
