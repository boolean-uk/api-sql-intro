/* core */

CREATE TABLE IF NOT EXISTS films (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  genre TEXT NOT NULL,
  release_year INTEGER,
  score INTEGER,
  UNIQUE(title)
);


INSERT INTO films
	(title, genre, release_year, score)
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
ORDER BY score DESC;

SELECT *
FROM films
ORDER BY release_year ASC;

SELECT *
FROM films
WHERE score >= 8;

SELECT *
FROM films
WHERE score <= 7;

SELECT *
FROM films
WHERE release_year = 1990;

SELECT *
FROM films
WHERE release_year < 2000;

SELECT *
FROM films
WHERE release_year > 1990;

SELECT *
FROM films
WHERE release_year BETWEEN 1990 AND 1999;

SELECT *
FROM films
WHERE genre = 'SciFi';

SELECT *
FROM films
WHERE genre = 'SciFi' OR genre = 'Western';

SELECT *
FROM films
WHERE NOT genre = 'SciFi';

SELECT *
FROM films
WHERE genre = 'Western' AND release_year < 2000;

SELECT *
FROM films
WHERE title LIKE '%Matrix%';

/* extension 1 */

SELECT AVG(score)
FROM films;

SELECT COUNT(*)
FROM films;

SELECT genre, AVG(score)
FROM films
GROUP BY genre;

/* extension 2 */

TRUNCATE TABLE directors;
CREATE TABLE IF NOT EXISTS directors (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  UNIQUE(id)
);

INSERT INTO directors
	(id, name)
VALUES
	(1, 'frida'),
  (2, 'elias'),
  (3, 'theo');

CREATE TABLE IF NOT EXISTS new_films (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  genre TEXT NOT NULL,
  release_year INTEGER,
  score INTEGER,
  director_id INTEGER,
  UNIQUE(title)
);

INSERT INTO new_films
	(title, genre, release_year, score, director_id)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9, 1),
  ('The Godfather', 'Crime', 1972, 9, 2),
  ('The Dark Knight', 'Action', 2008, 9, 3),
  ('Alien', 'SciFi', 1979, 9, 1),
  ('Total Recall', 'SciFi', 1990, 8, 2),
  ('The Matrix', 'SciFi', 1999, 8, 3),
  ('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
  ('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
  ('The Hunt for Red October', 'Thriller', 1990, 7, 3),
  ('Misery', 'Thriller', 1990, 7, 1),
  ('The Power Of The Dog', 'Western', 2021, 6, 2),
  ('Hell or High Water', 'Western', 2016, 8, 3),
  ('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
  ('Unforgiven', 'Western', 1992, 7, 2);

SELECT film.title, director.name
FROM new_films film
JOIN directors director ON film.director_id = director.id;

/* extension 3 */

SELECT director.name, COUNT(*)
FROM directors director
JOIN new_films ON director.id = new_films.director_id
GROUP BY name;