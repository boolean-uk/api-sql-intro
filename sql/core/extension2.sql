DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS directors;


CREATE TABLE directors (
	directorId serial PRIMARY KEY,
  name text
);



INSERT INTO directors 
	(name)
VALUES
	('Bob'),
  ('Dina'),
  ('Robert'),
  ('Dave'),
  ('Nigel');
  
  
CREATE TABLE films (
  id serial,
  directorId int,
  title text NOT NULL,
  genre text NOT NULL,
  release_year int NOT NULL,
  score int NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(directorId)
  REFERENCES directors(directorId),
  UNIQUE(title)
);

  
INSERT INTO films 
	(directorId, title, genre, release_year, score)
VALUES
	(1,'The Shawshank Redemption', 'Drama', 1994, 9),
	(1,'The Godfather', 'Crime', 1972, 9),
	(5,'The Dark Knight', 'Action', 2008, 9),
	(5,'Alien', 'SciFi', '1979', 9),
	(5,'Total Recall', 'SciFi', 1990, 8),
	(4,'The Matrix', 'SciFi', 1999, 8),
	(4,'The Matrix Resurrections', 'SciFi', 2021, 5),
	(2,'The Matrix Reloaded', 'SciFi', 2003, 6),
	(1,'The Hunt for Red October', 'Thriller', 1990, 7),
	(5,'Misery', 'Thriller', 1990, 7),
	(3,'The Power Of The Dog', 'Western', 2021, 6),
	(2,'Hell or High Water', 'Western', 2016, 8),
	(3,'The Good the Bad and the Ugly', 'Western', 1966, 9),
	(2,'Unforgiven', 'Western', 1992, 7);
  

SELECT * FROM films JOIN directors ON films.directorId = directors.directorid;








