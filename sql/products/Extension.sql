--Create the stuff

CREATE TABLE films (
	id SERIAL PRIMARY KEY,
	title TEXT,
	genre TEXT,
	release_year INTEGER,
	score INTEGER
);
--DROP TABLE films;

INSERT INTO films
	(title, genre, release_year, score)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7);


--Extension 1
SELECT AVG(score) FROM films;
SELECT COUNT(*) FROM films;
SELECT genre, AVG(score) FROM films GROUP BY genre;



--Extension 2
--Create
CREATE TABLE directors (
	id INTEGER PRIMARY KEY,
	name TEXT
);
DROP TABLE directors;

--Insert
INSERT INTO directors
	(id, name)
VALUES
	(1, 'Iris Flystam'),
	(69, 'Emma Lövgren'),
	(420, 'Victor Chicinas'),
	(9001, 'Malte Stengård');

--Update films
ALTER TABLE films
ADD directorId INTEGER;

UPDATE films
SET directorId = CASE
	WHEN id = 1 THEN 1
	WHEN id = 2 THEN 69
	WHEN id = 3 THEN 420
	WHEN id = 4 THEN 9001
	WHEN id = 5 THEN 1
	WHEN id = 6 THEN 1
	WHEN id = 7 THEN 420
	WHEN id = 8 THEN 69
	WHEN id = 9 THEN 420
	WHEN id = 10 THEN 1
	WHEN id = 11 THEN 69
	WHEN id = 12 THEN 9001
	WHEN id = 13 THEN 420
	WHEN id = 14 THEN 1
END;

--Actual Task
SELECT films.title, directors.name
FROM films
INNER JOIN directors ON films.directorId=directors.id
ORDER BY directors.name;



--Extension 3
SELECT directors.name, COUNT(*) AS num
FROM directors
INNER JOIN films ON directors.id=films.directorId
GROUP BY name
ORDER BY num DESC;