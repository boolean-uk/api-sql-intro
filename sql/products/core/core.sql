CREATE TABLE films(
filmId SERIAL PRIMARY KEY UNIQUE,
title TEXT UNIQUE,
genre TEXT,
release_year INTEGER,
score INTEGER
);

INSERT INTO films (title, genre, release_year, score)
VALUES('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO films (title, genre, release_year, score)
VALUES('The Godfather', 'Crime', 1972, 9);
INSERT INTO films (title, genre, release_year, score)
VALUES('The Dark Knight', 'Action', 2008, 9);
INSERT INTO films (title, genre, release_year, score)
VALUES('Alien', 'SciFi', 1979, 9);
INSERT INTO films (title, genre, release_year, score)
VALUES('Total Recall', 'SciFi', 1990, 8);
INSERT INTO films (title, genre, release_year, score)
VALUES('The Matrix', 'SciFi', 1999, 8);
INSERT INTO films (title, genre, release_year, score)
VALUES('The Matrix Resurrections', 'SciFi', 1994, 9);
INSERT INTO films (title, genre, release_year, score)
VALUES('The Matrix Reloaded', 'SciFi', 1994, 6);
INSERT INTO films (title, genre, release_year, score)
VALUES('The Hunt for Red October', 'SciFi', 1994, 9);
INSERT INTO films (title, genre, release_year, score)
VALUES('Misery', 'Thriller', 1994, 7);
INSERT INTO films (title, genre, release_year, score)
VALUES('The Power Of The Dog', 'Western', 1994, 9);
INSERT INTO films (title, genre, release_year, score)
VALUES('Hell or High Water', 'Western', 1994, 7);
INSERT INTO films (title, genre, release_year, score)
VALUES('The Good the Bad and the Ugly', 'Western', 1994, 7);
INSERT INTO films (title, genre, release_year, score)
VALUES('Unforgiven', 'Western', 1994, 9);

SELECT * FROM films;
SELECT * FROM films ORDER BY score DESC;
SELECT * FROM films ORDER BY release_year ASC;
SELECT * FROM films WHERE score >= 8;
SELECT * FROM films WHERE score <=7;
SELECT * FROM films WHERE release_year = 1990;
SELECT * FROM films WHERE release_year < 2000;
SELECT * FROM films WHERE release_year > 1990;
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;
SELECT * FROM films WHERE genre = 'SciFi';
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';
SELECT * FROM films WHERE genre != 'SciFi' AND genre != 'Western';
SELECT * FROM films WHERE genre != 'SciFi';
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
SELECT * FROM films WHERE title LIKE '%Matrix%';


