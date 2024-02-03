-- Standard Criteria --
DROP TABLE IF EXISTS films;
CREATE TABLE IF NOT EXISTS films (
  id SERIAL,
 	title TEXT,
	genre TEXT,
	release_year INT,
  score INT,
  UNIQUE (title)
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

-- (1) --
SELECT * FROM
	films AS f;

-- (2) --
SELECT * FROM
	films AS f
  ORDER BY f.score DESC;

-- (3) --
SELECT * FROM
	films AS f
  ORDER BY f.release_year ASC;

-- (4) --
SELECT * FROM
	films AS f
  WHERE f.score > 7;

-- (5) --
SELECT * FROM
	films AS f
  WHERE f.score < 8;

-- (6) --
SELECT * FROM
	films AS f
  WHERE f.release_year = 1990;

-- (7) --
SELECT * FROM
	films AS f
  WHERE f.release_year < 2000;

-- (8) --
SELECT * FROM
	films AS f
  WHERE f.release_year > 1990;

-- (9) --
SELECT * FROM
	films AS f
  WHERE f.release_year
  BETWEEN 1990 AND 1999;

-- (10) --
SELECT * FROM
	films AS f
  WHERE f.genre = 'SciFi';

-- (11) --
SELECT * FROM
	films AS f
  WHERE f.genre = 'SciFi'
  OR f.genre = 'Western';

-- (12) --
SELECT * FROM
	films AS f
  WHERE f.genre <> 'SciFi';

-- (13) --
SELECT * FROM
	films AS f
  WHERE f.genre = 'Western'
  AND f.release_year < 2000;

-- (14) --
SELECT * FROM
	films AS f
  WHERE f.title LIKE '%Matrix%';