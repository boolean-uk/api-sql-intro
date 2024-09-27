SELECT directors.director_id, directors.name as director_name, COUNT(films2.directorid) as number_of_films
FROM directors
JOIN films2 ON directors.director_id = films2.directorid
GROUP BY directors.director_id, directors.name
ORDER BY number_of_films DESC;