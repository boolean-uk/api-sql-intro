-- Standard Criteria

CREATE TABLE IF NOT EXISTS films (id SERIAL PRIMARY KEY, title TEXT, genre TEXT, release_year INTEGER, score INTEGER);
INSERT INTO films (title, genre, release_year, score)

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

SELECT * FROM films;
SELECT title FROM films;
SELECT * FROM films ORDER BY score DESC;
SELECT * FROM films ORDER BY release_year ASC;
SELECT * FROM films WHERE score >= 8;
SELECT * FROM films WHERE score <= 7;
SELECT * FROM films WHERE release_year = 1990;
SELECT * FROM films WHERE release_year <= 2000;
SELECT * FROM films WHERE release_year >= 1990;
SELECT * FROM films WHERE release_year between 1990 and 1999;
SELECT * FROM films WHERE genre = 'SciFi';
SELECT * FROM films WHERE genre = 'Western' OR genre = 'SciFi';
SELECT * FROM films WHERE genre <> 'SciFi';
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
SELECT * FROM films WHERE title LIKE '%Matrix%';

EXTENSION 1

SELECT AVG(score) AS average_score from films;
SELECT COUNT(*) AS total_films FROM films;
SELECT genre, AVG(score) AS average_rating FROM films GROUP BY genre;

EXTENSION 2

ALTER TABLE films ADD COLUMN director_id INTEGER;
CREATE TABLE directors (director_id INTEGER PRIMARY KEY, name TEXT NOT null);
INSERT INTO directors (director_id, name) VALUES
(1, 'Frank Darabont'),
(2, 'Francis Ford Coppola'),
(3, 'Christopher Nolan'),
(4, 'Ridley Scott'),
(5, 'Paul Verhoeven'),
(6, 'Lana Wachowski'),
(7, 'Lilly Wachowski'),
(8, 'John McTiernan'),
(9, 'Rob Reiner'),
(10, 'Jane Campion'),
(11, 'David Mackenzie'),
(12, 'Sergio Leone'),
(13, 'Clint Eastwood');
UPDATE films SET director_id = 1 WHERE title = 'The Shawshank Redemption';
UPDATE films SET director_id = 2 WHERE title = 'The Godfather';
UPDATE films SET director_id = 3 WHERE title = 'The Dark Knight';
UPDATE films SET director_id = 4 WHERE title = 'Alien';
UPDATE films SET director_id = 5 WHERE title = 'Total Recall';
UPDATE films SET director_id = 6 WHERE title IN ('The Matrix', 'The Matrix Resurrections', 'The Matrix Reloaded');
UPDATE films SET director_id = 8 WHERE title = 'The Hunt for Red October';
UPDATE films SET director_id = 9 WHERE title = 'Misery';
UPDATE films SET director_id = 10 WHERE title = 'The Power Of The Dog';
UPDATE films SET director_id = 11 WHERE title = 'Hell or High Water';
UPDATE films SET director_id = 12 WHERE title = 'The Good the Bad and the Ugly';
UPDATE films SET director_id = 13 WHERE title = 'Unforgiven';

EXTENSION 3
SELECT directors.name AS director, COUNT(films.title) AS number_of_films 
FROM directors 
LEFT JOIN films ON directors.director_id = films.director_id 
GROUP BY directors.name;
