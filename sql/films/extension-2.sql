--Extension 2--
--Create a new directors table. Each director should have a name and a unique director id--
CREATE TABLE IF NOT EXISTS films (id SERIAL PRIMARY KEY, title TEXT UNIQUE, genre TEXT, release_year INTEGER, score INTEGER);


--Recreate your films table and add a directorId column. Re-insert your film data, updating each film ao it will have a directorId.--

-- ALTER TABLE films
-- ADD directorId INTEGER;

CREATE TABLE IF NOT EXISTS films (id SERIAL PRIMARY KEY, title TEXT UNIQUE, genre TEXT, release_year INTEGER, score INTEGER, directorId INTEGER, FOREIGN KEY (directorId) REFERENCES directors(id)
);

INSERT INTO films
    (title, genre, release_year, score, directorId)
VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 2),
    ('The Dark Knight', 'Action', 2008, 9, 3),
    ('Alien', 'SciFi', 1979, 9, 4),
    ('Total Recall', 'SciFi', 1990, 8, 5),
    ('The Matrix', 'SciFi', 1999, 8, 6),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
    ('The Hunt for Red October', 'Thriller', 1990, 7, 3),
    ('Misery', 'Thriller', 1990, 7, 4),
    ('The Power Of The Dog', 'Western', 2021, 6, 5),
    ('Hell or High Water', 'Western', 2016, 8, 6),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
    ('Unforgiven', 'Western', 1992, 7, 2);

--Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.--

SELECT title AS title, name AS director
FROM films
JOIN directors
ON films.directorid = directors.id;