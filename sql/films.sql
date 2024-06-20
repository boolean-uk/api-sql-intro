-- Core
CREATE TABLE films(
 id serial primary key,
 title TEXT UNIQUE,
 genre TEXT,
 release_year INTEGER,
 rating INTEGER
);

BEGIN;
INSERT INTO films
(title, genre, release_year, rating) 
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
('Unforgiven', 'Western', 1992, 7) RETURNING *;
COMMIT;

SELECT * FROM films;
SELECT * FROM films ORDER BY rating DESC;
SELECT * FROM films ORDER BY release_year ASC;
SELECT * FROM films WHERE rating > 7;
SELECT * FROM films WHERE release_year = 1990;
SELECT * FROM films WHERE release_year < 2000;
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;
SELECT * FROM films WHERE genre = 'SciFi';
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';
SELECT * FROM films WHERE genre != 'SciFi';
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
SELECT * FROM films WHERE title LIKE '%Matrix%';

-- Extension 1
SELECT AVG(rating) FROM films;
SELECT COUNT(*) FROM films;
SELECT genre, AVG(rating) FROM films GROUP BY genre;

-- Extension 2
CREATE TABLE directors(
 id serial primary key,
 name TEXT
);

BEGIN;
INSERT INTO directors
(name) 
VALUES 
('Jane Doe'),
('Johny Something'),
('Unkown Person'),
('Real Director'),
('Unreal Director') RETURNING *;
COMMIT;

DROP TABLE films;

CREATE TABLE films(
 id serial primary key,
 title TEXT UNIQUE,
 genre TEXT,
 release_year INTEGER,
 rating INTEGER,
 director_id INTEGER, 
 FOREIGN KEY (director_id) REFERENCES directors(id)
);

BEGIN;
INSERT INTO films
(title, genre, release_year, rating, director_id) 
VALUES 
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 5),
('The Dark Knight', 'Action', 2008, 9, 2),
('Alien', 'SciFi', 1979, 9, 4),
('Total Recall', 'SciFi', 1990, 8, 3),
('The Matrix', 'SciFi', 1999, 8, 3),
('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
('The Matrix Reloaded', 'SciFi', 2003, 6, 5),
('The Hunt for Red October', 'Thriller', 1990, 7, 5),
('Misery', 'Thriller', 1990, 7, 5),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 4),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
('Unforgiven', 'Western', 1992, 7, 2) RETURNING *;
COMMIT;

SELECT * FROM films INNER JOIN directors ON films.director_id = directors.id;

-- Extension 3
SELECT name, COUNT(title) as movie_count FROM directors INNER JOIN films ON directors.id = films.director_id GROUP BY name;