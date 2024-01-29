CREATE TABLE directors(
  id SERIAL PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE films(
  id SERIAL PRIMARY KEY,
  director_id INTEGER,
  title VARCHAR(50) UNIQUE NOT NULL,
  genre VARCHAR(50) NOT NULL,
  release_year INTEGER NOT NULL,
  score INTEGER,
  FOREIGN KEY (director_id) REFERENCES directors(id)
);

INSERT INTO directors("name")
VALUES
('Michael Bay'),
('Phil Dunphy'),
('Axl Rose');

INSERT INTO films(director_id, title, genre, release_year, score)
VALUES
(1, 'The Shawshank Redemption', 'Drama', 1994, 9),
(1, 'The Godfather', 'Crime', 1972, 9),
(1, 'The Dark Knight', 'Action', 2008, 9),
(2, 'Alien', 'SciFi', 1979, 9),
(2, 'Total Recall', 'SciFi', 1990, 8),
(2, 'The Matrix', 'SciFi', 1999, 8),
(3, 'The Matrix Resurrections', 'SciFi', 2021, 5),
(3, 'The Matrix Reloaded', 'SciFi', 2003, 6),
(3, 'The Hunt for Red October', 'Thriller', 1990, 7),
(3, 'Misery', 'Thriller', 1990, 7),
(3, 'The Power Of The Dog', 'Western', 2021, 6),
(2, 'Hell or High Water', 'Western', 2016, 8),
(2, 'The Good the Bad and the Ugly', 'Western', 1966, 9),
(1, 'Unforgiven', 'Western', 1992, 7);