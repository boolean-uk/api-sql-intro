-- Setting up tables
DROP TABLE IF EXISTS films CASCADE;
DROP TABLE IF EXISTS directors CASCADE;

CREATE TABLE directors (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) UNIQUE
);

CREATE TABLE films (
	id SERIAL PRIMARY KEY,
	director_id INT,
	name VARCHAR(255) UNIQUE,
	genre VARCHAR(50),
	release_year INT,
	rating INT,
	FOREIGN KEY (director_id) REFERENCES directors (id)
);


--Inserting data
INSERT INTO films (name, genre, release_year, rating) VALUES
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
('Unforgiven', 'Western', 1992, 7),
('Blade Runner', 'SciFi', 1982, 8);

INSERT INTO directors (name) VALUES
('Frank Darabont'),
('Francis Ford Coppola'),
('Christopher Nolan'),
('Ridley Scott');

UPDATE films SET director_id = 1 WHERE id = 1;
UPDATE films SET director_id = 2 WHERE id = 2;
UPDATE films SET director_id = 3 WHERE id = 3;
UPDATE films SET director_id = 4 WHERE id = 4;
UPDATE films SET director_id = 4 WHERE name = 'Blade Runner' AND release_year = 1982;



--QUERIES
--All films
SELECT * FROM films;

--All films ordered by rating desc
SELECT * FROM films ORDER BY rating DESC;

--All films ordered by release year asc
SELECT * FROM films ORDER BY release_year ASC;

--All films with a rating of 8 or higher
SELECT * FROM films WHERE rating >= 8;

-- All films with a rating of 7 or lower
SELECT * FROM films WHERE rating < 8;

-- films released in 1990
SELECT * FROM films WHERE release_year = 1990;

-- films released before 2000
SELECT * FROM films WHERE release_year < 2000;

-- films released after 1990
SELECT * FROM films WHERE release_year > 1990;

-- films released between 1990 and 1999
SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999;

-- films with the genre of "SciFi"
SELECT * FROM films WHERE genre LIKE 'SciFi';

-- films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre LIKE 'Western' OR genre LIKE 'SciFi';

-- films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre NOT LIKE 'SciFi';

-- films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre LIKE 'Western' AND release_year < 2000;

-- films that have the world "Matrix" in their title
SELECT * FROM films WHERE name LIKE '%Matrix%';

-- Return the average film rating
SELECT AVG(rating) FROM films;

-- Return the total number of films
SELECT COUNT(*) FROM films;

-- Return the average film rating by genre
SELECT genre, AVG(rating) FROM films GROUP BY genre;

--EXTENSION QUERIES
--Films and their directors
SELECT f."name" AS "film", d."name" AS "director", f."release_year"
FROM films f INNER JOIN directors d
ON f."director_id = d.id";

--Directors and their number of films
SELECT d."name" AS "director", COUNT(f.id) AS "num_movies"
FROM films f INNER JOIN directors d ON f."director_id" = d."id"
GROUP BY d."name"
ORDER BY "num_movies" DESC;

