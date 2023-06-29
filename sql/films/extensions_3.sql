SELECT directors.directorname, COUNT(films.directorid)
FROM directors
JOIN films ON directors.directorid = films.directorid
GROUP BY directors.directorname