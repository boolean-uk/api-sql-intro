SELECT * FROM films JOIN directors ON films.directorId = directors.directorid;

SELECT directors.name, COUNT(directors.directorId) FROM films JOIN directors ON films.directorId = directors.directorid GROUP BY name;
