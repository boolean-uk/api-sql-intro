with the data of the extension 2

SELECT directors.name, COUNT(title) FROM films JOIN directors ON films.directorId = directors.id GROUP BY directors.name