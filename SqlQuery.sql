--CORE

CREATE TABLE films (
	Id serial PRIMARY KEY,
	directorId int REFERENCES directors(Id),
	title varchar(255),
	genre varchar(50),
	release_year integer,
	score INTEGER
);

DROP TABLE films;

INSERT INTO films (directorId, title, genre, release_year, score) VALUES 
(1,'The Shawshank Redemption', 'Drama', 1994, 9),
(1,'The Godfather', 'Crime', 1972, 9),
(1,'The Dark Knight', 'Action', 2008, 9),
(1,'Alien', 'SciFi', 1979, 9),
(1,'Total Recall', 'SciFi', 1990, 8),
(2,'The Matrix', 'SciFi', 1999, 8),
(2,'The Matrix Resurrections', 'SciFi', 2021, 5),
(2,'The Matrix Reloaded', 'SciFi', 2003, 6),
(2,'The Hunt for Red October', 'Thriller', 1990, 7),
(2,'Misery', 'Thriller', 1990, 7),
(2,'The Power Of The Dog', 'Western', 2021, 6),
(2,'Hell or High Water', 'Western', 2016, 8),
(2,'The Good the Bad and the Ugly', 'Western', 1966, 9),
(3,'Unforgiven', 'Western', 1992, 7);

SELECT * FROM films;

SELECT * FROM films ORDER BY score ASC;

SELECT * FROM films ORDER BY release_year ASC;

SELECT * FROM films WHERE score >= 8;

SELECT * FROM films WHERE score <= 7;

SELECT * FROM films WHERE release_year = 1990;

SELECT * FROM films WHERE release_year < 2000;

SELECT * FROM films WHERE release_year > 1990;

SELECT * FROM films WHERE release_year > 1990 AND release_year < 1999;

SELECT * FROM films WHERE genre = 'SciFi';

SELECT * FROM films WHERE genre = 'Western' OR genre = 'SciFi';

SELECT * FROM films WHERE genre != 'SciFi';

SELECT * FROM films WHERE genre = 'Western' AND release_year <= 2000;

SELECT * FROM films WHERE title LIKE '%Matrix%';


--EXTENSION 1

SELECT AVG(score) as Score_Average FROM films;

SELECT COUNT(*) as Total_films from films;

SELECT genre, AVG(score) as Average_Score from films GROUP BY genre;


--EXTENSION 2

CREATE TABLE directors 
(
	Id serial PRIMARY KEY,
	name varchar(255)
);

INSERT INTO directors (name) VALUES 
('Michael Bea'),
('Steven Mine'),
('Nessle Tendo'),
('Quitting Terinti');

SELECT * FROM films JOIN directors ON films.directorId = directors.id;


--EXTENSION 3

SELECT name, COUNT(*) FROM films JOIN directors ON films.directorId = directors.id GROUP BY directors.id; 