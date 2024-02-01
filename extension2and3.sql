CREATE TABLE IF NOT EXISTS directors (
	director_id SERIAL PRIMARY KEY,
	director_name TEXT NOT NULL,
	UNIQUE (director_name)
);

CREATE TABLE IF NOT EXISTS films (
	film_id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	genre TEXT NOT NULL,
	release_year INT NOT NULL,
	score INT NOT NULL CHECK (score BETWEEN 1 and 10),
	director_id INT NOT NULL REFERENCES directors(director_id),
	UNIQUE (title)
);


INSERT INTO directors
	(director_name)
VALUES
	('Frank Darabont'),
	('Francis Ford Coppola'),
	('Christopher Nolan'),
	('Ridley Scott'),
	('Paul Verhoeven'),
	('Lana Wachowski');

INSERT INTO films
	(title, genre, release_year, score, director_id)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9, 1),
	('The Godfather', 'Crime', 1972, 9, 2),
	('The Dark Knight', 'Action', 2008, 9, 3),
	('Alien', 'SciFi', 1979, 9, 4),
	('Total Recall', 'SciFi', 1990, 8, 5),
	('The Matrix', 'SciFi', 1999, 8, 5),
	('The Matrix Resurrections', 'SciFi', 2021, 5, 5),
	('The Matrix Reloaded', 'SciFi', 2003, 6, 5),
	('The Hunt for Red October', 'Thriller', 1990, 7, 2),
	('Misery', 'Thriller', 1990, 7, 1),
	('The Power Of The Dog', 'Western', 2021, 6, 4),
	('Hell or High Water', 'Western', 2016, 8, 3),
	('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
	('Unforgiven', 'Western', 1992, 7, 3);


SELECT title, genre, release_year, score, director_name FROM films INNER JOIN directors ON films.director_id = directors.director_id;

SELECT director_name, COUNT(films.director_id) FROM films INNER JOIN directors ON films.director_id = directors.director_id GROUP BY director_name ORDER BY count DESC;