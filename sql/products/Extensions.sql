-- Extension 1

SELECT AVG("score") FROM films;
SELECT COUNT(*) FROM films;
SELECT genre, AVG("score") FROM films GROUP BY genre;

-- Extension 2

--Create Directors table
CREATE TABLE directors (
		id SERIAL,
		name TEXT
);

--Populate with directors
INSERT INTO directors (name) VALUES
    ('Christopher Nolan'),
    ('Quentin Tarantino'),
    ('Steven Spielberg'),
    ('Martin Scorsese'),
    ('David Fincher'),
    ('Stanley Kubrick'),
    ('Alfred Hitchcock'),
    ('Coen Brothers'),
    ('James Cameron'),
    ('Ridley Scott'
);

--drop film table
DROP TABLE IF EXISTS films;

--new films table
CREATE TABLE films (
		id SERIAL,
		directorId INT,
		title TEXT UNIQUE,
		genre TEXT,
		relese_year INT,
		score INT
);

--Populate new films table
INSERT INTO films (directorId, title, genre, release_year, score)
VALUES
    (1, 'The Godfather', 'Crime', 1972, 9),
    (2, 'The Dark Knight', 'Action', 2008, 9),
    (3, 'Alien', 'SciFi', 1979, 9),
    (4, 'Total Recall', 'SciFi', 1990, 8),
    (5, 'The Matrix', 'SciFi', 1999, 8),
    (6, 'The Matrix Resurrections', 'SciFi', 2021, 5),
    (7, 'The Matrix Reloaded', 'SciFi', 2003, 6),
    (8, 'The Hunt for Red October', 'Thriller', 1990, 7),
    (9, 'Misery', 'Thriller', 1990, 7),
    (10, 'The Power Of The Dog', 'Western', 2021, 6),
    (1, 'Hell or High Water', 'Western', 2016, 8),
    (2, 'The Good, the Bad and the Ugly', 'Western', 1966, 9),
    (3, 'Unforgiven', 'Western', 1992, 7);

--Get film and director
SELECT title, name FROM films JOIN directors ON films.directorId = directors.id;

--Extension 3
SELECT
    name AS director_name,
    (SELECT COUNT(*) FROM films WHERE directorId = directors.id) AS amount_of_films_directed
FROM directors;