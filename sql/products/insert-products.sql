INSERT INTO films (name, genre, release_year, score) VALUES
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

CORE: 

SELECT * FROM films

SELECT * FROM films
ORDER BY score DESC

SELECT * FROM films
ORDER BY release_year ASC

SELECT * FROM films
WHERE score > 7

SELECT * FROM films
WHERE score < 8

SELECT * FROM films
WHERE release_year = 1990

SELECT * FROM films
WHERE release_year < 2000

SELECT * FROM films
WHERE release_year BETWEEN 1990 AND 1999

SELECT * FROM films
WHERE genre = 'SciFi'

SELECT * FROM films
WHERE genre = 'SciFi' OR genre = 'Western'

SELECT * FROM films
WHERE genre != 'SciFi'

SELECT * FROM films
WHERE genre = 'Western' AND release_year < 2000

SELECT * FROM films
WHERE name LIKE '%Matrix%'

EXTENSION 1:

Return the average film rating:

SELECT AVG(score)
FROM films

Return the total number of films:
SELECT COUNT(films)
FROM films

Return the average film rating by genre:
SELECT genre, AVG(score)
FROM films
GROUP BY genre

EXTENSION 2: 

CREATE table directors(
	id serial PRIMARY KEY,
	name VARCHAR(100) NOT NULL
);

INSERT INTO directors (name) VALUES
  ('Steven Spielberg'),
  ('Christopher Nolan'),
  ('Quentin Tarantino'),
  ('Ridley Scott');


INSERT INTO films (name, genre, release_year, score, director_id) VALUES
  ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
  ('The Godfather', 'Crime', 1972, 9, 2),
  ('The Dark Knight', 'Action', 2008, 9, 3),
  ('Alien', 'SciFi', 1979, 9, 4),
  ('Total Recall', 'SciFi', 1990, 8, 1),
  ('The Matrix', 'SciFi', 1999, 8, 2),
  ('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
  ('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
  ('The Hunt for Red October', 'Thriller', 1990, 7, 1),
  ('Misery', 'Thriller', 1990, 7, 2),
  ('The Power Of The Dog', 'Western', 2021, 6, 3),
  ('Hell or High Water', 'Western', 2016, 8, 4),
  ('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
  ('Unforgiven', 'Western', 1992, 7, 2);


SELECT * FROM films m
LEFT JOIN directors d 
ON m.director_id = d.id

EXTENSION 3:

SELECT d.name,COUNT(d.name) as "number of movies" FROM films m
LEFT JOIN directors d 
ON m.director_id = d.id
GROUP BY d.name