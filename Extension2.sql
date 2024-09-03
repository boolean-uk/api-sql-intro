-- EXTENSION 2
-- Create a new directors table.
-- Each director should have a name and a unique director id.
CREATE TABLE directors(
	id serial PRIMARY KEY,
	name TEXT NOT NULL
);

-- Recreate your films table and add a directorId column.
DROP TABLE IF EXISTS films;
CREATE TABLE films(
	id serial PRIMARY KEY,
	directorId int REFERENCES directors(id) NOT NULL,
	title TEXT NOT NULL,
	genre TEXT NOT NULL,
	year int NOT NULL,
	score int NOT NULL,
	UNIQUE(title),
	CHECK(score <= 10)
);

-- Insert a few director records (the data does not need to be real, you can just make directors up).
INSERT INTO directors (name) VALUES
('Avery Stone'),
('Jordan Rivers'),
('Casey Blackwood'),
('Morgan Thorne'),
('Taylor Ashford'),
('Riley Kensington'),
('Dakota Vale'),
('Quinn Sterling'),
('Harper Winslow'),
('Peyton Marlowe');

-- Re-insert your film data, updating each film ao it will have a directorId.
INSERT INTO films (directorId, title, genre, year, score) VALUES
(1, 'The Shawshank Redemption', 'Drama', 1994, 9),
(2, 'The Godfather', 'Crime', 1972, 9),
(3, 'The Dark Knight', 'Action', 2008, 9),
(4, 'Alien', 'SciFi', 1979, 9),
(4, 'Total Recall', 'SciFi', 1990, 8),
(4, 'The Matrix', 'SciFi', 1999, 8),
(5, 'The Matrix Resurrections', 'SciFi', 2021, 5),
(5, 'The Matrix Reloaded', 'SciFi', 2003, 6),
(8, 'The Hunt for Red October', 'Thriller', 1990, 7),
(3, 'Misery', 'Thriller', 1990, 7),
(1, 'The Power of the Dog', 'Western', 2021, 6),
(7, 'Hell or High Water', 'Western', 2016, 8),
(6, 'The Good, the Bad and the Ugly', 'Western', 1966, 9),
(2, 'Unforgiven', 'Western', 1992, 7);

-- Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT films.title, directors.name AS director
FROM films
INNER JOIN directors
	ON films.directorId = directors.id
;