select directorid, directors.name, COUNT(films.id) from films
inner join directors on directors.id=films.directorid 
GROUP BY directorid, directors.name order by directorid asc