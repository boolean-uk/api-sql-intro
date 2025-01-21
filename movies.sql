CREATE TABLE films(
  id serial PRIMARY KEY, 
  name VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL,
  release_year int CHECK(release_year BETWEEN 1000 AND 9999),
  score int CHECK(score BETWEEN 0 AND 10),
  UNIQUE(name)
   );


   INSERT INTO films (name, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO films (name, genre, release_year, score) VALUES ('The Godfather', 'Crime', 1972, 9);
INSERT INTO films (name, genre, release_year, score) VALUES ('The Dark Knight', 'Action', 2008, 9);
INSERT INTO films (name, genre, release_year, score) VALUES ('Alien', 'SciFi', 1979, 9);
INSERT INTO films (name, genre, release_year, score) VALUES ('Total Recall', 'SciFi', 1990, 8);
INSERT INTO films (name, genre, release_year, score) VALUES ('The Matrix', 'SciFi', 1999, 8);
INSERT INTO films (name, genre, release_year, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
INSERT INTO films (name, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
INSERT INTO films (name, genre, release_year, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7);
INSERT INTO films (name, genre, release_year, score) VALUES ('Misery', 'Thriller', 1990, 7);
INSERT INTO films (name, genre, release_year, score) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
INSERT INTO films (name, genre, release_year, score) VALUES ('Hell or High Water', 'Western', 2016, 6);
INSERT INTO films (name, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
INSERT INTO films (name, genre, release_year, score) VALUES ('Unforgiven', 'Western', 1992, 7);
--All films
SELECT * FROM films
--All films ordered by rating descending
SELECT * FROM films ORDER BY score DESC
--All films ordered by release year ascending
SELECT * FROM films ORDER BY release_year ASC
--All films with a rating of 8 or higher
SELECT * FROM films WHERE score > 7
--All films with a rating of 7 or lower
SELECT * FROM films WHERE score < 8
-- All films released in 1990
SELECT * FROM films WHERE release_year = 1990
-- Films released between 1990 and 1999
SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999
-- Films with the genre of "SciFi"
SELECT * FROM films WHERE genre = 'SciFi'
-- Films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western'
-- Films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre != 'SciFi'
-- Films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre != 'Western' AND release_year < 2000
-- Films that have the world "Matrix" in their title
SELECT * FROM films WHERE position('Matrix' in name)>0;

--Extension 1
-- Return the average film rating
SELECT AVG(score) from films
-- Return the total number of films
SELECT Count(*) from films
-- Return the average film rating by genre
SELECT genre, Avg(score) from films GROUP BY genre



-- Extension 2
CREATE TABLE directors(
  directorId serial PRIMARY KEY, 
  name VARCHAR(255) NOT NULL
   );

   
ALTER TABLE films
	ADD COLUMN directorId INTEGER,
	ADD CONSTRAINT fk_director FOREIGN KEY (directorId) REFERENCES directors(directorId);

INSERT INTO directors(name)VALUES('Nigel');
INSERT INTO directors(name)VALUES('Dave');
INSERT INTO directors(name)VALUES('Andreas');
INSERT INTO directors(name)VALUES('Kristoffer');
INSERT INTO directors(name)VALUES('Jone');
INSERT INTO directors(name)VALUES('Axel');
-- Sorry
UPDATE films
SET directorId = 2
WHERE release_year < 1980

UPDATE films
SET directorId = 1
WHERE genre = 'Western'

UPDATE films
SET directorId = 3
WHERE score = 9

UPDATE films
SET directorId = 5
WHERE position('Matrix' in name)>0;

UPDATE films
SET directorId = 4
WHERE genre = 'Thriller'

UPDATE films
SET directorId = 6
WHERE directorId ISNULL

-- Gets each film with their director
SELECT films.*, directors.name AS Director 
FROM films
INNER JOIN directors 
ON films.directorId = directors.directorId

-- Extension 3
-- Gets name of the director and the amount of movies they directed
SELECT directors.name AS Director, Count(*) AS moviesdirected
FROM films
LEFT JOIN directors ON directors.directorId = films.directorId
GROUP BY films.directorId, directors.name