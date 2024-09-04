
CREATE TABLE films
(
	id serial PRIMARY KEY,
	title VARCHAR (100) NOT NULL,
	genre VARCHAR (100),
	release_year INTEGER NOT NULL,
	score INTEGER NOT NULL
);

	
INSERT INTO films
	(title, genre, release_year, score)
VALUES
	('The Godfather', 'Crime', 1972, 9),
	('The Shawshank Redemption', 'Drama', 1994, 9),
	('Alien, SciFi',' ', 1979, 9),
	('Total Recall', 'SciFi', 1990, 8),
	('The Matrix', 'SciFi', 1999, 8),
	('The Dark Knight', 'Action', 2008, 9),
	('The Matrix Resurrections', 'SciFi', 2021, 5),
	('The Matrix Reloaded', 'SciFi', 2003, 6),
	('The Hunt for Red October', 'Thriller', 1990, 7),
	('Misery', 'Thriller', 1990, 7),
	('The Power Of The Dog', 'Western', 2021, 6),
	('Hell or High Water', 'Western', 2016, 8),
	('The Good the Bad and the Ugly', 'Western', 1966, 9),
	('Unforgiven', 'Western', 1992, 7);	
	

--Select all films


SELECT * 
from films;


--Select All films ordered by rating descending


SELECT *
from films
ORDER BY score DESC;


--All films ordered by release year ascending


SELECT *
from films
ORDER BY score ASC;


--All films with a rating of 8 or higher

SELECT *
from films
WHERE score >= 8;


--All films with a rating of 7 or lower

SELECT *
from films
WHERE score <= 7;


--films released in 1990


SELECT *
from films 
WHERE release_year = 1990;


--films released before 2000


SELECT *
from films 
WHERE release_year < 2000;


--films released after 1990


SELECT *
from films 
WHERE release_year > 1990;


--films released between 1990 and 1999


SELECT *
from films 
WHERE release_year >= 1990
AND release_year <= 1999;


--fils with the genre of "SciFi"


SELECT *
from films 
WHERE genre = 'SciFi';


--films with the genre of "Western" or "SciFi"


SELECT *
from films
WHERE genre = 'SciFi'
OR genre = 'Western';


--films with any genre apart from "SciFi"

SELECT * 
from films
WHERE NOT
genre = 'SciFi';


--films with the genre of "Western" released before 2000


SELECT * 
from films 
WHERE genre = 'Western'
AND release_year < 2000;


--films that have the world "Matrix" in their title


SELECT *
from films
WHERE title like '%Matrix%';


--EXTENSION 1
--Return the average film rating

SELECT AVG(score) 
from films;

--Return the total number of films

SELECT COUNT(title) 
from films;

--Return the average film rating by genre


SELECT genre, AVG(score) AS average
FROM films
GROUP BY genre;



CREATE TABLE directors
(
	directorId serial PRIMARY KEY,
	name VARCHAR (100) NOT NULL
);


--Extension 2


INSERT INTO directors
(name)
VALUES
('Francis'),
('Ford Coppola'),
('Frank Darabont'),
('Ridley Scott'),
('Paul Verhoeven'),
('Christopher Nolan'),
('Lana Wachowski'),
('Lana Wachowski and Lilly Wachowski'),
('John McTiernan'),
('Rob Reiner'),
('Jane Campion'),
('David Mackenzie'),
('Sergio Leone'),
('Clint Eastwood');



ALTER TABLE films 
ADD COLUMN directorid VARCHAR (100) DEFAULT 0;


--Extension 2

CREATE TABLE films1
(
	id serial PRIMARY KEY,
	title VARCHAR (100) NOT NULL,
	genre VARCHAR (100),
	release_year INTEGER NOT NULL,
	score INTEGER NOT NULL,
	directorID INTEGER DEFAULT 0
);



INSERT INTO films1
	(title, genre, release_year, score, directorID)
VALUES
	('The Godfather', 'Crime', 1972, 9, 1),
	('The Shawshank Redemption', 'Drama', 1994, 9,2),
	('Alien, SciFi',' ', 1979, 9,3),
	('Total Recall', 'SciFi', 1990, 8,1),
	('The Matrix', 'SciFi', 1999, 8,4),
	('The Dark Knight', 'Action', 2008, 9,2),
	('The Matrix Resurrections', 'SciFi', 2021, 5,1),
	('The Matrix Reloaded', 'SciFi', 2003, 6,2),
	('The Hunt for Red October', 'Thriller', 1990, 7, 5),
	('Misery', 'Thriller', 1990, 7, 2),
	('The Power Of The Dog', 'Western', 2021, 6, 1),
	('Hell or High Water', 'Western', 2016, 8,1),
	('The Good the Bad and the Ugly', 'Western', 1966, 9,8),
	('Unforgiven', 'Western', 1992, 7,3);	



--SELECT title, director

SELECT films1.title, name
From films1 

LEFT JOIN directors ON films1.directorid = directors.directorid;


--Extension 3


SELECT directors.name, COUNT(films1.title) AS films_directed 
FROM films1
LEFT JOIN directors ON films1.directorid = directors.directorid
GROUP BY directors.name;
