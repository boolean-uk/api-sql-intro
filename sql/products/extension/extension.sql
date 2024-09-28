SELECT AVG(score) FROM films;
SELECT COUNT(films) FROM films;
SELECT AVG(score), genre FROM films GROUP BY genre;

CREATE TABLE directors(
directorId SERIAL PRIMARY KEY UNIQUE,
name TEXT NOT NULL
);

DROP TABLE films;

CREATE TABLE films(
filmId SERIAL PRIMARY KEY UNIQUE,
title TEXT UNIQUE,
genre TEXT,
release_year INTEGER,
score INTEGER,
directorId SERIAL,
FOREIGN KEY (directorId) REFERENCES directors(directorId)
);

INSERT INTO directors(name)
VALUES('Hassan');
INSERT INTO directors(name)
VALUES('Ateeb Salam');
INSERT INTO directors(name)
VALUES('Noah Lennestad');
INSERT INTO directors(name)
VALUES('Megatron Elbrus');

INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('The Shawshank Redemption', 'Drama', 1994, 9, 1);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('The Godfather', 'Crime', 1972, 9. 2);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('The Dark Knight', 'Action', 2008, 9, 3);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('Alien', 'SciFi', 1979, 9, 2);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('Total Recall', 'SciFi', 1990, 8, 1);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('The Matrix', 'SciFi', 1999, 8, 1);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('The Matrix Resurrections', 'SciFi', 1994, 9, 1);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('The Matrix Reloaded', 'SciFi', 1994, 6, 1);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('The Hunt for Red October', 'SciFi', 1994, 9, 1);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('Misery', 'Thriller', 1994, 7, 1);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('The Power Of The Dog', 'Western', 1994, 9, 1);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('Hell or High Water', 'Western', 1994, 7, 1);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('The Good the Bad and the Ugly', 'Western', 1994, 7, 2);
INSERT INTO films (title, genre, release_year, score, directorId)
VALUES('Unforgiven', 'Western', 1994, 9, 2);

SELECT films.title, directors.name FROM films INNER JOIN directors ON films.directorid=directors.directorid;

SELECT COUNT(films.directorid) AS film_count, directors.directorid, directors.name FROM films FULL JOIN directors ON films.directorid=directors.directorid GROUP BY directors.directorId, directors.name;
