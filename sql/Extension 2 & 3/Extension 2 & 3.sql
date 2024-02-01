SELECT title, genre, year, rating, directors.director FROM films
INNER JOIN directors ON films.directorid=directors.id;

-- SELECT director, COUNT (*) FROM films INNER JOIN directors ON films.directorid=directors.id;
SELECT director, COUNT (*) FROM films INNER JOIN directors ON films.directorid=directors.id GROUP BY director;