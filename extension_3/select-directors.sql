SELECT name, COUNT(name) FROM directors
RIGHT JOIN films ON directors.id = films.directorId
GROUP BY name;