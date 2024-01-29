SELECT directors.name,COUNT(films.id) 
FROM directors
LEFT JOIN films ON films.directorID = directors.id
GROUP BY directors.name 