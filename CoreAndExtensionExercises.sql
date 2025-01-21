// Setup

CREATE TABLE films(
	id serial primary key,
  title TEXT,
  genre TEXT,
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
  ('Unforgiven', 'Western', 1992, 7)








// CORE EXERCISE

// All films
SELECT * FROM films;


// All films ordered by rating descending
SELECT * FROM films
ORDER BY score desc;


// All films ordered by release year ascending
SELECT * FROM films
ORDER BY release_year asc;


// All films with a rating of 8 or higher
SELECT * FROM films
WHERE score >= 8;


// All films with a rating of 7 or lower
SELECT * FROM films
WHERE score <= 7;


// films released in 1990
SELECT * FROM films
WHERE release_year = 1990;


// films released before 2000
SELECT * FROM films
WHERE release_year < 2000;


// films released after 1990
SELECT * FROM films
WHERE release_year > 1990;


// films released between 1990 and 1999
SELECT * FROM films
WHERE release_year BETWEEN 1990 AND 1999;


// films with the genre of "SciFi"
SELECT * FROM films
WHERE genre = 'SciFi';


// films with the genre of "Western" or "SciFi"
SELECT * FROM films
WHERE genre = 'SciFi' OR genre = 'Western';


// films with any genre apart from "SciFi"
SELECT * FROM films
WHERE genre != 'SciFi';


// films with the genre of "Western" released before 2000
SELECT * FROM films
WHERE genre = 'Western'
AND release_year < 2000;


// films that have the world "Matrix" in their title
SELECT * FROM films
WHERE title like '%Matrix%';








// EXTENSION EXERCISES

// EXTENSION 1
// Return the average film rating
SELECT AVG(score) AS average_score FROM films


// Return the total number of films
SELECT COUNT(id) AS number_of_films FROM films


// Return the average film rating by genre
SELECT AVG(score) AS average_score, genre FROM films
GROUP BY genre








// EXTENSION 2
CREATE TABLE directors(
	id SERIAL PRIMARY KEY,
  name TEXT
)

INSERT INTO directors
	(name)
VALUES
	('Christopher Nolan'),
  ('Quentin Tarantino'),
  ('Josef Fares'),
  ('Steven Spielberg'),
  ('Alfred Hitchcock'),
  ('Woody Allen'),
  ('Clint Eastwood'),
  ('David Fincher'),
  ('Ridley Scott'),
  ('Danny Boyle')


CREATE TABLE films(
	id SERIAL PRIMARY KEY,
  directorId int,
  title TEXT,
  genre TEXT,
  release_year INTEGER,
  score INTEGER,
  UNIQUE(title),
  FOREIGN KEY (directorId) REFERENCES directors(id)
);


INSERT INTO films
	(directorid, title, genre, release_year, score)
VALUES
	(1, 'The Shawshank Redemption', 'Drama', 1994, 9),
  (1, 'The Godfather', 'Crime', 1972, 9),
  (1, 'The Dark Knight', 'Action', 2008, 9),
  (2, 'Alien', 'SciFi', 1979, 9),
  (2, 'Total Recall', 'SciFi', 1990, 8),
  (3, 'The Matrix', 'SciFi', 1999, 8),
  (4, 'The Matrix Resurrections', 'SciFi', 2021, 5),
  (5, 'The Matrix Reloaded', 'SciFi', 2003, 6),
  (6, 'The Hunt for Red October', 'Thriller', 1990, 7),
  (7, 'Misery', 'Thriller', 1990, 7),
  (8, 'The Power Of The Dog', 'Western', 2021, 6),
  (9, 'Hell or High Water', 'Western', 2016, 8),
  (10, 'The Good the Bad and the Ugly', 'Western', 1966, 9),
  (10, 'Unforgiven', 'Western', 1992, 7)


// Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT * FROM films
	join directors on directors.id = films.directorid;








// EXTENSION 3
// Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.

SELECT COUNT(films.directorId) AS Number_of_directed_films, directors.name FROM films
	JOIN directors on directors.id = films.directorid
  GROUP BY directors.name
  ORDER BY COUNT(films.id) desc

