
select Count(*) total , firstName, lastName from (Select Count( *) total, firstName, lastName from directors
INNER JOIN Films ON directors.directorID = Films.directorId
GROUP By firstName, lastName, title) 
GROUP BY firstName, lastName;

