/*
CREATE TABLE directors(
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(50) NOT NULL,
);
*/

--DROP TABLE films;


/*
CREATE TABLE films(
	id SERIAL PRIMARY KEY,
  directors_id INT REFERENCES directors(id),
  title VARCHAR(50) NOT NULL UNIQUE,
  genre VARCHAR(50) NOT NULL,
  release_year INT NOT NULL,
  score INTEGER CHECK(score >= 0 AND score <= 10) NOT NULL
);
*/

/*
INSERT INTO directors(full_name) VALUES
	('Frank Darabont'),
  ('Francis Ford Coppola'),
  ('Christopher Nolan'),
  ('Ridley Scott'),
  ('Paul Verhoeven'),
  ('Lana Wachowski'),
  ('Lilly Wachowski'),
  ('John McTiernan'),
  ('Rob Reiner'),
  ('Jane Campion'),
  ('David Mackenzie'),
  ('Sergio Leone'),
  ('Clint Eastwood');
*/

/*
INSERT INTO films(title, directors_id, genre, release_year, score) VALUES 
	('The Shawshank Redemption', 1, 'Drama', 1994, 9),
  ('The Godfather', 2,'Crime', 1972, 9),
  ('The Dark Knight', 3,'Action', 2008, 9),
  ('Alien', 4, 'SciFi',1979, 9),
  ('Total Recall', 5,'SciFi', 1990, 8),
  ('The Matrix', 6,'SciFi', 1999, 8),
  ('The Matrix Resurrections', 6, 'SciFi', 2021, 5),
  ('The Matrix Reloaded', 6, 'SciFi', 2003, 6),
  ('The Hunt for Red October', 7, 'Thriller', 1990, 7),
  ('Misery', 8,'Thriller', 1990, 7),
  ('The Power Of The Dog', 9, 'Western', 2021, 6),
  ('Hell or High Water', 10,'Western', 2016, 8),
  ('The Good the Bad and the Ugly', 11,'Western', 1966, 9),
  ('Unforgiven', 12,'Western', 1992, 7);
*/

/*
SELECT films.title, directors.full_name
FROM films
INNER JOIN directors ON films.directors_id = directors.id;
*/
