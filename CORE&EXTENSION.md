/*
CREATE TABLE
 	films(
	id serial primary key,
	title VARCHAR(255),
	genre varchar(50),
	release_year integer,
	IMDB_score integer
) 
*/

SELECT * FROM films;

/*
INSERT INTO films (title, genre, release_year, imdb_score) 
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
;
*/

-- 1
SELECT * FROM films;

-- 2
SELECT * FROM filmS ORDER BY imdb_score DESC;

-- 3
SELECT * FROM filmS ORDER BY release_year ASC;

-- 4
SELECT * FROM films WHERE imdb_score >= 8;

-- 5
SELECT * FROM films WHERE imdb_score <= 7;

-- 6
SELECT * FROM films WHERE release_year = 1990;

-- 7
SELECT * FROM films WHERE release_year < 2000;

-- 8
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;

-- 9
SELECT * FROM films WHERE genre = 'SciFi';

-- 10
SELECT * FROM films WHERE genre IN ('SciFi', 'Western');

-- 11
SELECT * FROM films WHERE genre NOT IN ('SciFi');

-- 12
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

-- 13
SELECT * FROM films WHERE title LIKE '%Matrix%';

----------------------------------------------------------- EXTENSION --------------------------------------------------------

-- 1
SELECT AVG(imdb_score)
FROM films;

-- 2
SELECT COUNT(*)
FROM films;

-- 3
SELECT genre, AVG(imdb_score) AS average_rating_by_genre
FROM films
GROUP BY genre;

---------------------------------------------------------- EXTENSION 2 --------------------------------------------------------
/*
CREATE TABLE 
	directors(
	director_id serial PRIMARY KEY,
	name VARCHAR(250)
);
*/

SELECT * FROM directors;

INSERT INTO directors (name)
VALUES
	('Henrik Rosenkilde'),
	('Anette Mari Mikalsen'),
	('Johannes Svale Rosenkilde')
;
	
DROP TABLE films;

CREATE TABLE 
	films(
	film_id serial PRIMARY KEY,
	title VARCHAR(255),
	genre VARCHAR(50),
	release_year INTEGER,
	imdb_score INTEGER,
	director_id INTEGER,
	FOREIGN KEY (director_id) REFERENCES directors(director_id)
	);
	
SELECT * FROM films;

INSERT INTO films (title, genre, release_year, imdb_score) 
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
; -- director_id = null

UPDATE films SET director_id = 1 WHERE genre = 'Western'; 
UPDATE films SET director_id = 2 WHERE genre = 'SciFi';
UPDATE films SET director_id = 3 WHERE genre = 'Thriller';
UPDATE films SET director_id = 1 WHERE genre = 'Drama';
UPDATE films SET director_id = 2 WHERE genre = 'Crime';
UPDATE films SET director_id = 3 WHERE genre = 'Action';

SELECT films.title, directors.name AS director
FROM films
JOIN directors ON films.director_id = directors.director_id;

UPDATE directors SET name = 'Anette Mari Rosenkilde' WHERE name = 'Anette Mari Mikalsen';

SELECT directors.name, COUNT(films.director_id) AS film_count
FROM directors
LEFT JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name;

	