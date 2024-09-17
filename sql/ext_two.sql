CREATE TABLE directors (
	id SERIAL PRIMARY KEY,
  name TEXT
);

CREATE TABLE films (
	id SERIAL PRIMARY KEY,
  title TEXT,
  director_id INTEGER,
  genre TEXT,
  release_year INTEGER,
  score INTEGER
);

INSERT INTO directors (name)
VALUES
	('Alice'),
    ('Bob'),
    ('Mary'),
    ('Amy'),
    ('Liz'),
    ('John');

INSERT INTO films (title, director_id, genre, release_year, score)
VALUES
    ('The Shawshank Redemption', 1, 'Drama', 1994, 9),
    ('The Godfather', 5, 'Crime', 1972, 9),
    ('The Dark Knight',5, 'Action', 2008, 9),
    ('Alien', 3,'SciFi', 1979, 9),
    ('Total Recall', 2,'SciFi', 1990, 8),
    ('The Matrix', 4,'SciFi', 1999, 8),
    ('The Matrix Resurrections', 5,'SciFi', 2021, 5),
    ('The Matrix Reloaded',1, 'SciFi', 2003, 6),
    ('The Hunt for Red October',5, 'Thriller', 1990, 7),
    ('Misery', 2,'Thriller', 1990, 7),
    ('The Power Of The Dog', 4,'Western', 2021, 6),
    ('Hell or High Water',3, 'Western', 2016, 8),
    ('The Good the Bad and the Ugly', 3,'Western', 1966, 9),
    ('Unforgiven',5, 'Western', 1992, 7);


-- Return a list of films with their director
SELECT films.title, directors.name AS director_name
FROM films
INNER JOIN directors
	on films.director_id = directors.id;