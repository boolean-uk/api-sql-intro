/*
Write a SQL CREATE TABLE statement that creates a table to store films. The table should have the following columns:

A unique film id (this should be the primary key, use SERIAL or INTEGER AUTOINCREMENT to make it increment automatically)
A unique title
A genre
A release year (make this integer data type)
A score out of 10 (make this integer data type)
*/
CREATE TABLE films(
id serial primary key,
title VARCHAR(255) UNIQUE,
genre VARCHAR(255),
release_year integer,
score integer
)

--Write SQL INSERT statements to add the following records in to the films table.
INSERT INTO films(title, genre, release_year, score) VALUES 
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

-- Write SQL SELECT statements to return films matching the below criteria:
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
--films with the genre of "SciFi"
SELECT * FROM films WHERE genre = 'SciFi'
--films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western'
--films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre != 'SciFi'
--films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000
--films that have the world "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%'

--EXTENSION 1

--Write a SQL SELECT statements to:
--Return the average film rating
SELECT AVG(score) FROM films
--Return the total number of films
SELECT COUNT(*) FROM films
--Return the average film rating by genre
SELECT genre, AVG(score) FROM films GROUP BY genre

--EXTENSION 2
--Create a new directors table. Each director should have a name and a unique director id.
CREATE TABLE directors(
id serial primary key,
name VARCHAR(255)
)
--Create a new directors table. Each director should have a name and a unique director id.
ALTER TABLE films ADD directorId integer
--Insert a few director records (the data does not need to be real, you can just make directors up). 
INSERT INTO directors (name) VALUES
('Steven Spielberg'),
('Christopher Nolan'),
('Quentin Tarantino'),
('The Wachowskis'),
('Stanley Kubrick');
--Re-insert your film data, updating each film with have a directorId.
INSERT INTO films(title, genre, release_year, score, directorid) VALUES 
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 5),
('The Dark Knight', 'Action', 2008, 9, 2),
('Alien', 'SciFi', 1979, 9, 5),
('Total Recall', 'SciFi', 1990, 8, 1),
('The Matrix', 'SciFi', 1999, 8, 4),
('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
('The Hunt for Red October', 'Thriller', 1990, 7, 5),
('Misery', 'Thriller', 1990, 7, 5),
('The Power Of The Dog', 'Western', 2021, 6, 3),
('Hell or High Water', 'Western', 2016, 8, 3),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
('Unforgiven', 'Western', 1992, 7, 3);
--Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT films.title, films.directorid, directors.name from films INNER JOIN directors ON films.directorid=directors.id

-- Extension 3

--Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT directors.name, COUNT(films) FROM directors INNER JOIN films ON directors.id=films.directorid GROUP BY directors.name