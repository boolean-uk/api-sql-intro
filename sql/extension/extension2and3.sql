-- EXTENSION EXERCISE 2 --

--Create a new `directors` table. Each director should have
--a name and a unique director id.
CREATE TABLE directors (
directorId SERIAL PRIMARY KEY,
name TEXT NOT NULL
);

INSERT INTO directors
(name)
VALUES
('Christopher Nolan'),
('Quentin Tarantino'),
('Steven Spielberg'),
('James Smith'),
('Jack Soyer');

-- Recreate your films table and add a `directorId` column. Insert a few director
-- records (the data does not need to be real, you can just make directors up).
-- Re-insert your film data, updating each film ao it will have a `directorId`.

CREATE TABLE films (
id SERIAL PRIMARY KEY,
title TEXT,
directorId INTEGER,
genre TEXT,
release_year INTEGER,
score INTEGER,
UNIQUE(title)
FOREIGN KEY (directorId) REFERENCES directors(directorId)
);

INSERT INTO films
(title, directorId, genre, release_year, score)
VALUES
('The Shawshank Redemption', 1, 'Drama', 1994, 9),
('The Godfather', 2, 'Crime', 1972, 9),
('The Dark Knight', 2, 'Action', 2008, 9),
('Alien', 3, 'SciFi', 1979, 9),
('Total Recall', 4, 'SciFi', 1990, 8),
('The Matrix', 5, 'SciFi', 1999, 8),
('The Matrix Resurrections', 5, 'SciFi', 2021, 5),
('The Matrix Reloaded', 5, 'SciFi', 2003, 6),
('The Hunt for Red October', 2, 'Thriller', 1990, 7),
('Misery', 2, 'Thriller', 1990, 7),
('The Power Of The Dog', 3, 'Western', 2021, 6),
('Hell or High Water', 4,'Western', 2016, 8),
('The Good the Bad and the Ugly', 5, 'Western', 1966, 9),
('Unforgiven', 3, 'Western', 1992, 7)
);

-- Using an SQL `JOIN`, write a SELECT statement that returns a list of films
-- with their director.
SELECT films.title, directors.name
FROM films
INNER JOIN directors
ON films.directorId = directors.directorId;

-- EXTENSION EXERCISE 2 --


-- EXTENSION EXERCISE 3 --

-- Write a SQL SELECT statement that returns a lists of directors along with
-- the number of films they have directed.
SELECT directors.name AS Director, COUNT(films.title) AS Number_of_films_directed
FROM films
INNER JOIN directors
ON films.directorId = directors.directorId
GROUP BY directors.name;

-- EXTENSION EXERCISE 3 --
