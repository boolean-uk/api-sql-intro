-- Core --

CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title TEXT,
  genre TEXT,
  release_year INTEGER,
  score INTEGER
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
  ('Unforgiven', 'Western', 1992, 7)
  ;

SELECT * FROM films;

SELECT * FROM films
ORDER BY score DESC
;

SELECT * FROM films
ORDER BY release_year ASC
;

SELECT * FROM films
WHERE score >= 8;

SELECT * FROM films
WHERE score <= 7;

SELECT * FROM films
WHERE release_year = 1990;

SELECT * FROM films
WHERE release_year < 2000;

SELECT * FROM films
WHERE release_year BETWEEN 1990 AND 1999;

SELECT * FROM films
WHERE genre = 'SciFi';

SELECT * FROM films
WHERE genre IN ('SciFi', 'Western');

SELECT * FROM films
WHERE genre NOT LIKE 'SciFi';

SELECT * FROM films
WHERE genre = 'Western'
	AND release_year < 2000;

SELECT * FROM films
WHERE title LIKE '%Matrix%';


-- Extension 1 --

SELECT AVG(score)
FROM films;

SELECT COUNT(title)
FROM films;

SELECT AVG(score), genre
FROM films
GROUP BY genre;



-- Extension 2 --

CREATE TABLE directors (
  id SERIAL PRIMARY KEY,
  name TEXT
);

INSERT INTO directors
	(name)
VALUES
  ('Sergio Leone'),
  ('Lana Wachowski'),
  ('Christopher Nolan'),
  ('Rob Reiner'),
  ('Francis Ford Coppola')
  ;

ALTER TABLE films
ADD directorID INTEGER;

UPDATE films
SET directorID = 5
WHERE title IN ('The Shawshank Redemption',
	'The Godfather',
  'Total Recall',
  'The Hunt for Red October');

UPDATE films
SET directorID = 4
WHERE title = 'Misery';

UPDATE films
SET directorID = 3
WHERE title IN ('The Dark Knight', 'The Power Of The Dog');

UPDATE films
SET directorID = 2
WHERE title IN ('The Matrix',
	'The Matrix Resurrections',
  'The Matrix Reloaded',
  'Alien');

UPDATE films
SET directorID = 1
WHERE title IN ('Unforgiven',
	'The Good the Bad and the Ugly',
  'Hell or High Water',
  'Alien');

SELECT films.title, directors.name
FROM films
INNER JOIN directors ON films.directorid = directors.id;



-- Extension 3 --

SELECT directors.name, COUNT(title)
FROM films
INNER JOIN directors ON films.directorid = directors.id
GROUP BY directorID, directors.name;