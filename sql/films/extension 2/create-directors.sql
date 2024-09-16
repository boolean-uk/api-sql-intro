-- Create a new directors table. Each director should have a name and a unique director id.
CREATE TABLE directors (
directorID SERIAL PRIMARY KEY ,
director TEXT
);

-- Insert a few director records (the data does not need to be real, you can just make directors up).
INSERT INTO directors
	(director)
	VALUES ('Keanu Reeves'),
	('Bob Marley'),
	('Joe Goldberg'),
	('Concerned Ape'),
	('Peeta Mellark');

-- recreate your films table and add a directorID column.
DROP TABLE films;

CREATE TABLE films (
id SERIAL PRIMARY KEY ,
directorID INTEGER ,
title TEXT, 
UNIQUE (title),
genre TEXT,
release_year INTEGER,
score INTEGER
);

-- Re-insert your film data, updating each film with have a directorId. 
INSERT INTO films
	(title, genre, release_year, score, directorId)
	VALUES ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
 	('The Godfather', 'Crime', 1972, 9, 2),
 	('The Dark Knight', 'Action', 2008, 9, 3),
 	('Alien', 'SciFi', 1979, 9, 4),
 	('Total Recall', 'SciFi', 1990, 8, 5),
 	('The Matrix', 'SciFi', 1999, 8, 3),
 	('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
 	('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
 	('The Hunt for Red October', 'Thriller', 1990, 7, 2),
 	('Misery', 'Thriller', 1990, 7, 4),
 	('The Power Of The Dog', 'Western', 2021, 6, 1),
 	('Hell or High Water', 'Western', 2016, 8, 2),
 	('The Good the Bad and the Ugly', 'Western', 1966, 9, 4),
 	('Unforgiven', 'Western', 1992, 7, 5);

-- Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT films.title, directors.directorID
FROM films
INNER JOIN directors
ON films.directorID = directors.directorID;
