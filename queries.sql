-- Create table
CREATE TABLE films(
	id SERIAL PRIMARY KEY,
	title TEXT UNIQUE NOT NULL,
	genre TEXT NOT NULL,
	release_year INT NOT NULL,
	score INT NOT NULL
);


-- Insert to table
INSERT INTO films(title, genre, release_year, score)
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
	('Unforgiven', 'Western', 1992, 7)

  
--All films
SELECT * FROM films

--All films ordered by rating descending
SELECT * FROM films ORDER BY score DESC

--All films ordered by release year ascending
SELECT * FROM films ORDER BY release_year ASC

--All films with a rating of 8 or higher
SELECT * FROM films WHERE score >= 8

--All films with a rating of 7 or lower
SELECT * FROM films WHERE score <= 7

--films released in 1990
SELECT * FROM films WHERE release_year = 1990

--films released before 2000
SELECT * FROM films WHERE release_year < 2000

--films released after 1990
SELECT * FROM films WHERE release_year > 1990

--films released between 1990 and 1999
SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999
-- comment: I assume the years should be inclusive...

--films with the genre of "SciFi"
SELECT * FROM films WHERE genre = 'SciFi'

--films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western'

--films with any genre apart from "SciFi"
SELECT * FROM films WHERE NOT genre = 'SciFi'

--films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000

--films that have the world "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%'


--Return the average film rating
SELECT AVG(score) FROM films

--Return the total number of films
SELECT COUNT(id) FROM films

--Return the average film rating by genre
SELECT genre, AVG(score) FROM films GROUP BY genre

-- Create directors table
CREATE TABLE directors(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

-- Add a few directors...
INSERT INTO directors(name)
VALUES
	('John Cena'),
	('Ola Nordmann'),
	('Nigel Nigel'),
	('AJ AJ')

-- Recreate the films table...
DROP TABLE films
CREATE TABLE films(
	id SERIAL PRIMARY KEY,
	title TEXT UNIQUE NOT NULL,
	genre TEXT NOT NULL,
	release_year INT NOT NULL,
	score INT NOT NULL,
	directorId INT NOT NULL
);

-- Re-insert the film data...
INSERT INTO films(title, genre, release_year, score, directorId)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9, 3),
	('The Godfather', 'Crime', 1972, 9, 4),
	('The Dark Knight', 'Action', 2008, 9, 3),
	('Alien', 'SciFi', 1979, 9, 2),
	('Total Recall', 'SciFi', 1990, 8, 1),
	('The Matrix', 'SciFi', 1999, 8, 1),
	('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
	('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
	('The Hunt for Red October', 'Thriller', 1990, 7, 2),
	('Misery', 'Thriller', 1990, 7, 1),
	('The Power Of The Dog', 'Western', 2021, 6, 4),
	('Hell or High Water', 'Western', 2016, 8, 2),
	('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
	('Unforgiven', 'Western', 1992, 7, 2)

-- Return list of films with their director using JOIN...
SELECT f.title, d.name AS director FROM films f LEFT JOIN directors d ON f.directorid = d.id


-- Return list of directors alongside the number of films they have directed
SELECT d.name AS director, COUNT(f.directorId) FROM films f LEFT JOIN directors d ON f.directorId = d.id GROUP BY d.name
