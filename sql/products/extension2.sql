CREATE TABLE IF NOT EXISTS directors(
	id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO directors (name) VALUES
('Steven Spielberg'),
('Christopher Nolan'),
('Martin Scorsese'),
('Quentin Tarantino'),
('Jon Favreau'),
('Woody Allen'),
('Peter Jackson');

DROP TABLE films

CREATE TABLE films (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50) UNIQUE NOT NULL,
    genre VARCHAR(50) NOT NULL,
    release_year INT NOT NULL,
    score INT CHECK (score BETWEEN 0 AND 10),
  	director_id INT
);

INSERT INTO films (title, genre, release_year, score, director_id) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 4),
('Total Recall', 'SciFi', 1990, 8, 5),
('The Matrix', 'SciFi', 1999, 8, 6),
('The Matrix Resurrections', 'SciFi', 2021, 5, 7),
('The Matrix Reloaded', 'SciFi', 2003, 6,1),
('The Hunt for Red October', 'Thriller', 1990, 7,2),
('Misery', 'Thriller', 1990, 7,3),
('The Power Of The Dog', 'Western', 2021, 6,4),
('Hell or High Water', 'Western', 2016, 8,5),
('The Good the Bad and the Ugly', 'Western', 1966, 9,6),
('Unforgiven', 'Western', 1992, 7,7);

SELECT * FROM films INNER JOIN directors ON films.director_id = directors.id;