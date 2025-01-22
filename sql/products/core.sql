CREATE TABLE films(
  id serial PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  genre VARCHAR(200) NOT NULL,
  release_year int NOT NULL,
  score int NOT NULL,
  directorid serial,
  UNIQUE(title)
  )

INSERT INTO films ( title, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO films ( title, genre, release_year, score) VALUES ('The Godfather', 'Crime', 1972, 9);
INSERT INTO films ( title, genre, release_year, score) VALUES ('The Dark Knight', 'Action', 2008, 9);
INSERT INTO films ( title, genre, release_year, score) VALUES ('Alien', 'SciFi', 1979, 9);
INSERT INTO films ( title, genre, release_year, score) VALUES ('Total Recall', 'SciFi', 1990, 8);
INSERT INTO films ( title, genre, release_year, score) VALUES ('The Matrix', 'SciFi', 1999, 8);
INSERT INTO films ( title, genre, release_year, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
INSERT INTO films ( title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
INSERT INTO films ( title, genre, release_year, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7);
INSERT INTO films ( title, genre, release_year, score) VALUES ('Misery', 'Thriller', 1990, 7);
INSERT INTO films ( title, genre, release_year, score) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
INSERT INTO films ( title, genre, release_year, score) VALUES ('Hell or High Water', 'Western', 2016, 8);
INSERT INTO films ( title, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
INSERT INTO films ( title, genre, release_year, score) VALUES ('Unforgiven', 'Western', 1992, 7);


SELECT * FROM films 

SELECT * FROM films AS f ORDER BY f.score DESC

SELECT * FROM films AS f ORDER BY f.release_year ASC

SELECT * FROM films AS f WHERE f.score >=8

SELECT * FROM films AS f WHERE f.score <=7

SELECT * FROM films AS f WHERE f.release_year = 1990

SELECT * FROM films AS f WHERE f.release_year < 2000

SELECT * FROM films AS f WHERE f.release_year > 1990

SELECT * FROM films AS f WHERE f.release_year > 1990 AND f.release_year < 2000

SELECT * FROM films AS f WHERE f.genre = 'SciFi'

SELECT * FROM films AS f WHERE f.genre = 'SciFi' OR f.genre = 'Western'

SELECT * FROM films AS f WHERE f.genre != 'SciFi' 

SELECT * FROM films AS f WHERE f.genre = 'Western' AND f.release_year < 2000

SELECT * FROM films AS f WHERE f.title LIKE '%Matrix%'


SELECT AVG(films.score) FROM films

SELECT COUNT(films.title) FROM films

SELECT films.genre, AVG(films.score) AS average_score FROM films GROUP BY films.genre