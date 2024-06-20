-- STANDARD
-- create the films table.
 CREATE TABLE IF NOT EXISTS films(
  id SERIAL PRIMARY KEY,
  title TEXT UNIQUE NOT NULL,
  genre TEXT,
  release_year INTEGER,
  score INTEGER
)

-- adding records in to the films table.
INSERT INTO films
       (title, genre, release_year, score)
VALUES ('The Shawshank Redemption', 'Drama', 1994, 9),
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

-- QUERIES
-- select all films
SELECT * 
FROM films;


-- all films ordered by rating descending
SELECT * 
FROM films 
ORDER BY score DESC

-- all films ordered by release year ascending
SELECT * 
FROM films 
ORDER BY release_year ASC

-- all films with a rating of 8 or higher
SELECT * 
FROM films 
WHERE score >= 8

-- all films with a rating of 7 or lower
SELECT * 
FROM films 
WHERE score <= 7

-- films released in 1990
SELECT * 
FROM films 
WHERE release_year = 1990

-- films released before 2000
SELECT * 
FROM films 
WHERE release_year < 2000

-- films released after 1990
SELECT * 
FROM films 
WHERE release_year > 1990

-- films released between 1990 and 1999
SELECT * 
FROM films 
WHERE release_year BETWEEN 1990 AND 1999

-- films with the genre of "SciFi"
SELECT * 
FROM films 
WHERE genre = 'SciFi'

-- films with the genre of "Western" or "SciFi"
SELECT * 
FROM films 
WHERE genre IN ('Western', 'SciFi')

-- films with any genre apart from "SciFi"
SELECT * 
FROM films 
WHERE genre != 'SciFi'

-- films with the genre of "Western" released before 2000
SELECT * 
FROM films 
WHERE genre = 'Western' AND release_year < 2000

-- films that have the world "Matrix" in their title
SELECT * 
FROM films 
WHERE title LIKE '%Matrix%'

-- EXTENSION 1
-- return the average film rating
SELECT AVG(score) AS average_rating -- or ROUND(AVG(score))
FROM films

-- return the total number of films
SELECT COUNT(*) AS total_films
FROM films

-- return the average film rating by genre
SELECT ROUND(AVG(score)) AS avg_rating_by_genre
FROM films
GROUP BY genre;

-- EXTENSION 2
-- create a new directors table
 CREATE TABLE IF NOT EXISTS directors(
  id SERIAL PRIMARY KEY,
  name TEXT 
)

-- adding records in to the diersctors table
INSERT INTO films
       (name)
VALUES ('John Lasseter'),
       ('Pete Docter'),
       ('Andrew Stanton'),
       ('Brad Bird'),
       ('Lee Unkrich'),
       ('Brenda Chapman'),
       ('Dan Scanlon');

-- dropp films table
ALTER TABLE films
ADD director_id INTEGER;

-- re-create the films table with director_id column
 CREATE TABLE IF NOT EXISTS films(
  id SERIAL PRIMARY KEY,
  title TEXT UNIQUE NOT NULL,
  genre TEXT,
  release_year INTEGER,
  score INTEGER,
  director_id INTEGER
)

-- adding records in to the films table.
INSERT INTO films
       (title, genre, release_year, score, director_id)
VALUES ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
       ('The Godfather', 'Crime', 1972, 9, 1),
       ('The Dark Knight', 'Action', 2008, 9, 1),
       ('Alien', 'SciFi', 1979, 9, 2),
       ('Total Recall', 'SciFi', 1990, 8, 3),
       ('The Matrix', 'SciFi', 1999, 8, 4),
       ('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
       ('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
       ('The Hunt for Red October', 'Thriller', 1990, 7, 3),
       ('Misery', 'Thriller', 1990, 7, 2),
       ('The Power Of The Dog', 'Western', 2021, 6, 5),
       ('Hell or High Water', 'Western', 2016, 8, 1),
       ('The Good the Bad and the Ugly', 'Western', 1966, 9, 6),
       ('Unforgiven', 'Western', 1992, 7, 7);

-- returns a list of films with their director
SELECT title AS movie_name, name AS director
FROM films
INNER JOIN directors 
    ON films.director_id = directors.id;
