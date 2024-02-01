--Create a new directors table. Each director should have a name and a unique director id. Recreate your films table and add a --directorId column. Insert a few director records (the data does not need to be real, you can just make directors up).
--Reinsert your film data, updating each film so it will have a directorId. Using an SQL JOIN, write a SELECT statement that
--returns a list of films with their director.

CREATE TABLE IF NOT EXISTS directors (
	directorId SERIAL PRIMARY KEY,
	name TEXT
);

INSERT INTO directors
	(name)
VALUES
	('Chris Nolan'), ('Queen Tarantino'), ('Pete Jackson'), ('Morty Scorsese');

CREATE TABLE films (
	filmId SERIAL PRIMARY KEY,
	title TEXT,
	genre TEXT,
	release_year INT,
	score INT,
	directorId SERIAL,
	FOREIGN KEY (directorId) REFERENCES directors(directorId)
);

INSERT INTO films
	(title, genre, release_year, score, directorId)
VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 2),
    ('The Dark Knight', 'Action', 2008, 9, 3),
    ('Alien', 'SciFi', 1979, 9, 4),
    ('Total Recall', 'SciFi', 1990, 8, 1),
    ('The Matrix', 'SciFi', 1999, 8, 2),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
    ('The Hunt for Red October', 'Thriller', 1990, 7, 1),
    ('Misery', 'Thriller', 1990, 7, 2),
    ('The Power Of The Dog', 'Western', 2021, 6, 3),
    ('Hell or High Water', 'Western', 2016, 8, 4),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
    ('Unforgiven', 'Western', 1992, 7, 2);

    select films.title, directors.name from films inner join directors on films.directorId=directors.directorId;