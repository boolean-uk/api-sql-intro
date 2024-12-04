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

-- Extension (1) --
-- (1) --
SELECT (SUM(SCORE)/COUNT(SCORE)) AS avg_score FROM
    films AS f;

-- (2) --
SELECT COUNT(*) FROM
	films AS f;

-- (3) --
SELECT f.genre, (SUM(SCORE)/COUNT(SCORE)) AS avg_score FROM
  films AS f
  GROUP BY f.genre;

-- Extension (2) --
SELECT * FROM
	FILMS AS f
	JOIN directors AS d
    ON d.id = f.director_id;

-- Extension (3) --
DROP TABLE IF EXISTS directors;
CREATE TABLE IF NOT EXISTS directors (
    id SERIAL,
 	name TEXT
);

INSERT INTO directors
	(name)
 VALUES
 	('Nicolai Klokmose'),
    ('Dave Ames'),
    ('Steve Jobs');

DROP TABLE IF EXISTS films;
CREATE TABLE IF NOT EXISTS films (
    id SERIAL,
 	title TEXT,
	genre TEXT,
	release_year INT,
    score INT,
    director_id INT,
    UNIQUE (title)
);

INSERT INTO films
    (title, genre, release_year, score, director_id)
VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 1),
    ('The Dark Knight', 'Action', 2008, 9, 1),
    ('Alien', 'SciFi', 1979, 9, 1),
    ('Total Recall', 'SciFi', 1990, 8, 1),
    ('The Matrix', 'SciFi', 1999, 8, 2),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 2),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
    ('The Hunt for Red October', 'Thriller', 1990, 7, 2),
    ('Misery', 'Thriller', 1990, 7, 2),
    ('The Power Of The Dog', 'Western', 2021, 6, 2),
    ('Hell or High Water', 'Western', 2016, 8, 2),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
    ('Unforgiven', 'Western', 1992, 7, 3);

 SELECT d.name, COUNT(d.name) FROM
	directors AS d
	JOIN films AS f
    ON d.id = f.director_id
    GROUP BY d.name;
