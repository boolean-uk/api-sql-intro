DROP TABLE IF EXISTS directors CASCADE;
DROP TABLE IF EXISTS films CASCADE;

CREATE TABLE directors(
  id SERIAL PRIMARY KEY,
  name varchar(255) NOT null
);

CREATE TABLE films(
  id SERIAL PRIMARY KEY,
  director_id integer,
  title varchar(255) NOT null,
  genre varchar(255) NOT null,
  release_year integer NOT null,
  score integer CHECK (score >= 0 AND score <= 10),

  UNIQUE(title),
  FOREIGN KEY(director_id) REFERENCES directors(id)
);

INSERT INTO directors(name) VALUES
  ('Dave Ames'),
  ('Nathan King'),
  ('Herman Gard Stornes');

INSERT INTO films(director_id, title, genre, release_year, score) VALUES
  (1, 'The Shawshank Redemption', 'Drama', 1994, 9),
  (2, 'The Godfather', 'Crime', 1972, 9),
  (2, 'The Dark Knight', 'Action', 2008, 9),
  (2, 'Alien', 'SciFi', 1979, 9),
  (2, 'Total Recall', 'SciFi', 1990, 8),
  (1, 'The Matrix', 'SciFi', 1999, 8),
  (1, 'The Matrix Resurrections', 'SciFi', 2021, 5),
  (1, 'The Matrix Reloaded', 'SciFi', 2003, 6),
  (2, 'The Hunt for Red October', 'Thriller', 1990, 7),
  (3, 'Misery', 'Thriller', 1990, 7),
  (1, 'The Power Of The Dog', 'Western', 2021, 6),
  (3, 'Hell or High Water', 'Western', 2016, 8),
  (3, 'The Good the Bad and the Ugly', 'Western', 1966, 9),
  (2, 'Unforgiven', 'Western', 1992, 7);

SELECT directors.name AS director, films.title AS title, films.genre, films.release_year, films.score
FROM films
INNER JOIN directors ON directors.id = films.director_id;
