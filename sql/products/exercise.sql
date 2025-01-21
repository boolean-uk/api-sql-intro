
/*CREATE TABLE films (
  	filmID SERIAL,
  	title varchar(255),
  	genre varchar(255),
  	releaseYear INTEGER,
  	score INTEGER,
  	directorid SERIAL,
  	PRIMARY KEY(filmID),
    FOREIGN KEY(directorid) REFERENCES directors(directorid),
  	UNIQUE(title)
  )*/
  
  --DROP TABLE films
  
  /*
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9, 1);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('The Godfather', 'Crime', 1972, 9, 2);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('The Dark Knight', 'Action', 2008, 9, 2);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('Alien', 'SciFi', 1979, 9, 2);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('Total Recall', 'SciFi', 1990, 8, 3);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('The Matrix', 'SciFi', 1999, 8,3);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5, 3);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6, 4);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7, 4);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('Misery', 'Thriller', 1990, 7, 2);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('The Power Of The Dog', 'Western', 2021, 6, 2);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('Hell or High Water', 'Western', 2016, 8, 3);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9, 4);
  INSERT INTO films(title, genre, releaseYear, score, directorid) VALUES ('Unforgiven', 'Western', 1992, 7, 3);
  */
  

--SELECT * FROM films
--SELECT * FROM films ORDER BY score DESC
--SELECT * FROM films ORDER BY releaseYear ASC
--SELECT * FROM films WHERE score > 7 ORDER BY score DESC
--SELECT * FROM films WHERE score < 8 ORDER BY score DESC
--SELECT * FROM films WHERE releaseYear = 1990
--SELECT * FROM films WHERE releaseYear < 2001 ORDER BY releaseYear ASC
--SELECT * FROM films WHERE releaseYear > 1990 ORDER BY releaseYear ASC
--SELECT * FROM films WHERE 1990 < releaseYear AND releaseYear < 2000 ORDER BY releaseYear ASC
--SELECT * FROM films WHERE genre = 'SciFi'
--SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western'
--SELECT * FROM films WHERE NOT genre = 'SciFi'
--SELECT * FROM films WHERE genre = 'Western' AND releaseYear < 2000
--SELECT * FROM films WHERE title Like '%Matrix%'

--EXTENSION 1
--SELECT AVG(score) FROM films
--SELECT COUNT(*) FROM films
--SELECT genre,AVG(score) FROM films GROUP BY genre

--EXTENSION 2
/*
CREATE TABLE directors(
  directorid SERIAL,
  name VARCHAR(255),
  PRIMARY KEY(directorid)
);*/

/*INSERT INTO directors (name) VALUES ('Petter')
INSERT INTO directors (name) VALUES ('Martin')
INSERT INTO directors (name) VALUES ('Arvid')
INSERT INTO directors (name) VALUES ('Nigel')*/

--SELECT * FROM directors

--SELECT title, genre, releaseYear, score, name FROM films INNER JOIN directors ON films.directorid = directors.directorid


--EXTENSION 3

--SELECT name, COUNT(title) FROM directors JOIN films ON films.directorid = directors.directorid GROUP BY name
