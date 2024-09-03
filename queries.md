--core

CREATE TABLE Films (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL UNIQUE,
  genre VARCHAR(100) NOT NULL,
  releaseYear INTEGER NOT NULL,
  rating INTEGER NOT NULL CHECK (rating BETWEEN 0 AND 10)
);

INSERT INTO films
(title, genre, releaseyear, rating)
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

SELECT *
FROM films;

SELECT *
FROM films
ORDER BY rating DESC;

SELECT *
FROM films
ORDER BY releaseyear;

SELECT *
FROM films
WHERE rating >= 8
ORDER BY RATING DESC;

SELECT * 
FROM films
WHERE rating <= 7
ORDER BY rating DESC;

SELECT * 
FROM films
WHERE releaseyear = 1990;

SELECT *
FROM films 
WHERE releaseyear < 2000
ORDER BY releaseyear DESC;

SELECT *
FROM films
WHERE releaseyear > 1990
ORDER BY releaseyear DESC;

SELECT *
FROM films
WHERE releaseyear BETWEEN 1990 AND 1999
ORDER BY releaseyear DESC;

SELECT *
FROM films 
WHERE genre = 'SciFi';

SELECT *
FROM films 
WHERE genre = 'SciFi' OR genre = 'Western';

SELECT *
FROM films
WHERE genre != 'SciFi';

SELECT *
FROM films
WHERE genre = 'Western' AND releaseyear < 2000;

SELECT *
FROM films
WHERE title LIKE '%Matrix%';


--extension 1

SELECT avg(rating) AS average_rating
FROM films;

SELECT count(*) AS nr_films
FROM films;

SELECT genre, avg(rating) AS average_rating
FROM films
GROUP BY genre;

--extension 2

CREATE TABLE directors(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
 )

INSERT INTO directors (name)
VALUES
('Bjorg'),
('Ali'),
('John'),
('Kaja'),
('Thomas');

CREATE TABLE films_ext2 (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL UNIQUE,
  genre VARCHAR(100) NOT NULL,
  releaseYear INTEGER NOT NULL,
  rating INTEGER NOT NULL CHECK (rating BETWEEN 0 AND 10),
  director_id int,
  FOREIGN KEY (director_id) REFERENCES directors(id)
);

INSERT INTO films_ext2
(title, genre, releaseyear, rating, director_id)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 4),
('Total Recall', 'SciFi', 1990, 8, 5),
('The Matrix', 'SciFi', 1999, 8, 1),
('The Matrix Resurrections', 'SciFi', 2021, 5, 2),
('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
('The Hunt for Red October', 'Thriller', 1990, 7, 4),
('Misery', 'Thriller', 1990, 7, 5),
('The Power Of The Dog', 'Western', 2021, 6, 1),
('Hell or High Water', 'Western', 2016, 8, 2),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
('Unforgiven', 'Western', 1992, 7, 4);


SELECT title, name AS director 
FROM films_ext2 INNER JOIN directors ON (director_id = directors.id);

--extension 3

SELECT d.name, count(f.id) AS nr_films
FROM directors d INNER JOIN films_ext2 f ON (d.id = f.director_id)
GROUP BY name;
