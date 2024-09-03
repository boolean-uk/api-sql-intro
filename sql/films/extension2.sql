CREATE TABLE directors(
 id serial primary key,
 name text not null,
 unique(id)
)


CREATE TABLE directors (
    directorId INT PRIMARY KEY,
    name TEXT NOT NULL
);


CREATE TABLE films (
    title TEXT NOT NULL,
    genre TEXT NOT NULL,
    releaseYear TEXT NOT NULL,
    score INT NOT NULL,
    directorId INT,
    FOREIGN KEY (directorId) REFERENCES directors(directorId)
);


INSERT INTO directors (directorId, name) VALUES (1, 'Christopher Nolan');
INSERT INTO directors (directorId, name) VALUES (2, 'Martin Scorecese');
INSERT INTO directors (directorId, name) VALUES (3, 'Dave Ames');


INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9, 1);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('The Godfather', 'Crime', 1972, 9, 2);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('The Dark Knight', 'Action', 2008, 9, 3);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('Alien', 'SciFi', 1979, 9, 2);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('Total Recall', 'SciFi', 1990, 8, 1);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('The Matrix', 'SciFi', 1999, 8, 2);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5, 3);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6, 3);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7, 1);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('Misery', 'Thriller', 1990, 7, 1);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('The Power Of The Dog', 'Western', 2021, 6, 2);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('Hell or High Water', 'Western', 2016, 8, 3);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9, 2);
INSERT INTO films (title, genre, releaseYear, score, directorId) VALUES ('Unforgiven', 'Western', 1992, 7, 3);


SELECT *
FROM films
INNER JOIN directors ON films.directorId = directors.directorId;