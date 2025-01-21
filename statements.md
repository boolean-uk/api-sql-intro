# Core

-- Creates table films
CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    genre VARCHAR(100),
    release_year INTEGER,
    score INTEGER CHECK (score BETWEEN 0 AND 10)
);

-- Inserts into films
INSERT INTO films (title, genre, release_year, score) VALUES
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

-- Returns all films
SELECT * FROM films;

-- Returns all films ordered by rating descending
SELECT * FROM films ORDER BY score DESC;

-- Returns all films ordered by release year ascending
SELECT * FROM films ORDER BY release_year ASC;

-- Returns all films with a rating of 8 or higher
SELECT * FROM films WHERE score >= 8;

-- Returns all films with a rating of 7 or lower
SELECT * FROM films WHERE score <= 7;

-- Returns films released in 1990
SELECT * FROM films WHERE release_year = 1990;

-- Returns films released before 2000
SELECT * FROM films WHERE release_year < 2000;

-- Returns films released after 1990
SELECT * FROM films WHERE release_year > 1990;

-- Returns films released between 1990 and 1999
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;

-- Returns films with the genre of "SciFi"
SELECT * FROM films WHERE genre = 'SciFi';

-- Returns films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre IN ('Western', 'SciFi');

-- Returns films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre != 'SciFi';

-- Returns films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

-- Returns films that have the word "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%';

# Extension 1

-- Returns the average film rating
SELECT AVG(score) AS average_rating FROM films;

-- Returns the total number of films
SELECT COUNT(*) AS total_films FROM films;

-- Returns the average film rating by genre
SELECT genre, AVG(score) AS average_rating
FROM films
GROUP BY genre;

# Extension 2

-- Creates table directors
CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Drops table films
DROP TABLE films;

-- Recreates table films
CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    genre VARCHAR(100),
    release_year INTEGER,
    score INTEGER CHECK (score BETWEEN 0 AND 10),
    director_id INTEGER REFERENCES directors(director_id)
);

-- Inserts into directors
INSERT INTO directors (name) VALUES
('Christopher Nolan'),
('Ridley Scott'),
('Francis Ford Coppola'),
('Frank Darabont'),
('Quentin Tarantino');

-- Reinserts into films
INSERT INTO films (title, genre, release_year, score, director_id) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 4),
('The Godfather', 'Crime', 1972, 9, 3),
('The Dark Knight', 'Action', 2008, 9, 1),
('Alien', 'SciFi', 1979, 9, 2),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', 1999, 8, 1),
('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
('The Matrix Reloaded', 'SciFi', 2003, 6, 1),
('The Hunt for Red October', 'Thriller', 1990, 7, 2),
('Misery', 'Thriller', 1990, 7, 4),
('The Power Of The Dog', 'Western', 2021, 6, 5),
('Hell or High Water', 'Western', 2016, 8, 5),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 5),
('Unforgiven', 'Western', 1992, 7, 5);

-- Returns a list of films with their director
SELECT films.title AS film_title, films.genre, films.release_year, films.score, directors.name AS director_name
FROM films
JOIN directors ON films.director_id = directors.director_id;

# Extension 3

-- Returns a lists of directors along with the number of films they have directed
SELECT directors.name AS director_name, COUNT(films.film_id) AS number_of_films
FROM directors
LEFT JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name
ORDER BY number_of_films DESC;