CREATE TABLE directors(
id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE
)

DROP TABLE films

CREATE TABLE films(
id SERIAL PRIMARY KEY,
"directorId" INTEGER,
title VARCHAR(40) NOT NULL UNIQUE,
genre VARCHAR(40),
release_year INTEGER,
score INTEGER CHECK (score <= 10)
)

INSERT INTO directors (name)
VALUES ('director A'), ('director B'), ('director C')

INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('The Shawshank Redemption', 2, 'Drama', 1994, 9);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('The Godfather', 3, 'Crime', 1972, 9);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('The Dark Knight', 2, 'Action', 2008, 9);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('Alien', 3, 'SciFi', 1979, 9);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('Total Recall', 1, 'SciFi', 1990, 8);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('The Matrix', 2, 'SciFi', 1999, 8);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('The Matrix Resurrections', 2, 'SciFi', 2021, 5);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('The Matrix Reloaded', 2, 'SciFi', 2003, 6);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('The Hunt for Red October', 3, 'Thriller', 1990, 7);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('Misery', 1, 'Thriller', 1990, 7);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('The Power Of The Dog', 1, 'Western', 2021, 6);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('Hell or High Water', 2, 'Western', 2016, 8);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 2, 'Western', 1966, 9);
INSERT INTO films(title, "directorId", genre, release_year, score) VALUES ('Unforgiven', 1, 'Western', 1992, 7)

SELECT title, name FROM films
INNER JOIN directors ON directors.id = films."directorId"