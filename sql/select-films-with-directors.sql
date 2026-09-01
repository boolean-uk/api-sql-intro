SELECT films.title, films.genre, films.release_year, films.score, directors.name AS director
FROM films
JOIN directors ON films.directorId = directors.directorId;