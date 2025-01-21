CREATE TABLE films(
film_id serial PRIMARY KEY,
title VARCHAR(50),
genre VARCHAR(20),
release_year INTEGER,
score INTEGER CHECK (score BETWEEN 0 AND 10),
director_id INTEGER,
UNIQUE(title)
)


INSERT INTO films (title, genre, release_year, score, director_id) VALUES 
('The Shawshank Redemption', 'Drama', 1994, 9, 2),
('The Godfather', 'Crime', 1972, 9, 1),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 2),
('Total Recall', 'SciFi', 1990, 8, 1),
('The Matrix', 'SciFi', 1999, 8, 2),
('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
('The Hunt for Red October', 'Thriller', 1990, 7, 3),
('Misery', 'Thriller', 1990, 7, 2),
('The Power Of The Dog', 'Western', 2021, 6, 1),
('Hell or High Water', 'Western', 2016, 8, 1),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven', 'Western', 1992, 7, 2);


SELECT * FROM films
SELECT * FROM films ORDER BY score DESC
SELECT * FROM films ORDER BY release_year ASC
SELECT * FROM films WHERE score >= 8
SELECT * FROM films WHERE score <= 7
SELECT * FROM films WHERE release_year = 1990
SELECT * FROM films WHERE release_year < 2000
SELECT * FROM films WHERE release_year > 1990
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999
SELECT * FROM films WHERE genre = 'SciFi'
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western'
SELECT * FROM films WHERE genre != 'SciFi'
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000
SELECT * FROM films WHERE title LIKE '%Matrix%'

SELECT AVG(score) AS average_rating FROM films;
SELECT COUNT(film_id) AS number_films FROM films;
SELECT AVG(score) AS average_rating_by_group FROM films GROUP BY genre;

CREATE TABLE directors(
director_id serial PRIMARY KEY,
name VARCHAR(50)
)

INSERT INTO directors (name) VALUES
('Noah'),
('Per'),
('Henrik')

SELECT films.title, directors.name AS director_name FROM films JOIN directors ON films.director_id = directors.director_id;

SELECT directors.name AS director_name, COUNT(film_id) AS directed_films_count FROM directors JOIN films ON films.director_id = directors.director_id GROUP BY directors.name;