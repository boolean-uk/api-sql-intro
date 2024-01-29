CREATE TABLE films(
 id serial PRIMARY KEY,
 title VARCHAR(255) NOT NULL,
 genre VARCHAR(255),
 release_year INTEGER,
 score INTEGER,
 directorId INTEGER REFERENCES directors(id),
 UNIQUE(title)
);

CREATE TABLE directors(
 id serial PRIMARY KEY,
 name VARCHAR(255) NOT NULL
);

-- Insert director records
INSERT INTO directors (name) VALUES
  ('Christopher Nolan'),
  ('Frank Darabont'),
  ('Ridley Scott'),
  ('Paul Verhoeven'),
  ('Sofia Coppola');

INSERT INTO films (title, genre, release_year, score, directorId) VALUES
  ('The Shawshank Redemption', 'Drama', 1994, 9, 2),
  ('The Godfather', 'Crime', 1972, 9, 4),
  ('The Dark Knight', 'Action', 2008, 9, 1),
  ('Alien', 'SciFi', 1979, 9, 3),
  ('Total Recall', 'SciFi', 1990, 8, 4),
  ('The Matrix', 'SciFi', 1999, 8, 2), 
  ('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
  ('The Matrix Reloaded', 'SciFi', 2003, 6, 1),
  ('The Hunt for Red October', 'Thriller', 1990, 7, 2),  
  ('Misery', 'Thriller', 1990, 7, 2),
  ('The Power Of The Dog', 'Western', 2021, 6, 4),  
  ('Hell or High Water', 'Western', 2016, 8, 1),  
  ('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),  
  ('Unforgiven', 'Western', 1992, 7, 2);

SELECT * FROM films JOIN directors ON films.directorID = directors.id;