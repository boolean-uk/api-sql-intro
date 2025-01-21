DORP TABLE FILMS;

CREATE TABLE IF NOT EXISTS films (
  id SERIAL PRIMARY KEY,
  title TEXT,
  genre TEXT,
  release_year INTEGER,
  score INTEGER,
  UNIQUE(title)
);

TRUNCATE TABLE films;

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
      ('Hell or High Wate', 'Western', 2016, 8),
      ('The Good the Bad and the Ugly', 'Western', 1966, 9),
      ('Unforgiven', 'Western', 1992, 7);

-- All films
SELECT * FROM films;

-- All films ordered by rating desc
SELECT * FROM films
ORDER BY score DESC;

-- All films ordered by year asc
SELECT * FROM films
ORDER BY release_year;

-- All films rating >= 8
SELECT * FROM films
WHERE score >= 8;

-- All films rating <= 7
SELECT * FROM films
WHERE SCORE <= 7;

-- All films 1990
SELECT * FROM films
WHERE release_year = 1990;

-- Films before 2000
SELECT * FROM films
WHERE release_year <= 2000;

-- Films after 1990
SELECT * FROM films
WHERE release_year >= 1990;

-- Films between 1990-2000
SELECT * FROM films
WHERE release_year BETWEEN 1990 AND 1999;  -- inclusive on both ends

-- SciFi films
SELECT * FROM films
WHERE genre = 'SciFi';

-- Western or SciFi
SELECT * FROM films
WHERE genre = 'SciFi' OR genre = 'Western';

-- No SciFi
SELECT * FROM films
WHERE genre != 'SciFi';

-- Pre-2000 Westerns
SELECT * FROM films
WHERE genre = 'Western' AND release_year < 2000;

-- Films with Matrix in title
SELECT * FROM films
WHERE title LIKE '%Matrix%';

-- ######## EXTENSION 1 ########

-- Average film rating
SELECT AVG(score) as average_score FROM films;

-- Number of films
SELECT COUNT(*) AS number_of_films FROM films;

-- Average rating by genre
SELECT genre, AVG(score) as average_score FROM films
GROUP BY genre;

-- ######## EXTENSION 2 ########

CREATE TABLE IF NOT EXISTS directors (
  id INTEGER PRIMARY KEY,
  name TEXT
);

TRUNCATE TABLE directors;

INSERT INTO directors (id, name)
VALUES
			(1, 'Mr. Director'),
      (2, 'Director Jr.'),
      (3, 'Director Directorson');


DROP TABLE films2;
CREATE TABLE IF NOT EXISTS films2 (
  id SERIAL PRIMARY KEY,
  title TEXT,
  genre TEXT,
  release_year INTEGER,
  score INTEGER,
  director_id INTEGER REFERENCES directors(id),
  UNIQUE(title)
);

TRUNCATE TABLE films2;

INSERT INTO films2
(title, genre, release_year, score, director_id)
VALUES
			('The Shawshank Redemption', 'Drama', 1994, 9, 1),
      ('The Godfather', 'Crime', 1972, 9, 1),
      ('The Dark Knight', 'Action', 2008, 9, 2),
      ('Alien', 'SciFi', 1979, 9, 3),
      ('Total Recall', 'SciFi', 1990, 8, 2),
      ('The Matrix', 'SciFi', 1999, 8, 2),
      ('The Matrix Resurrections', 'SciFi', 2021, 5, 2),
      ('The Matrix Reloaded', 'SciFi', 2003, 6, 1),
      ('The Hunt for Red October', 'Thriller', 1990, 7, 1),
      ('Misery', 'Thriller', 1990, 7, 1),
      ('The Power Of The Dog', 'Western', 2021, 6, 3),
      ('Hell or High Wate', 'Western', 2016, 8, 1),
      ('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
      ('Unforgiven', 'Western', 1992, 7, 3);

-- Films with director
SELECT title, name FROM films2
INNER JOIN directors
	ON films2.director_id = directors.id;

-- EXTENSION 3: directors with number of films
SELECT name, COUNT(*) FROM directors
INNER JOIN films2
	ON directors.id = films2.director_id
GROUP BY name;