DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS directors;

CREATE TABLE IF NOT EXISTS directors (
	id SERIAL PRIMARY KEY,
	name TEXT
);

CREATE TABLE IF NOT EXISTS films (
	id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	genre TEXT,
	release_year INT,
	score INT,
	director_id SERIAL NOT NULL,
	UNIQUE(title),
	FOREIGN KEY(director_id) 
		REFERENCES directors(id)
		ON DELETE CASCADE
);

INSERT INTO directors
	(id, name)
VALUES
	(1, 'Mr Director'),
	(2, 'The Bean'),
	(3, 'Crows');

INSERT INTO films
	(title, genre, release_year, score, director_id)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9, 1),
	('The Godfather', 'Crime', 1972, 9, 2),
	('The Dark Knight', 'Action', 2008, 9, 3),
	('Alien', 'SciFi', 1979, 9, 2),
	('Total Recall', 'SciFi', 1990, 8, 1),
	('The Matrix', 'SciFi', 1999, 8, 2),
	('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
	('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
	('The Hunt for Red October', 'Thriller', 1990, 7, 3),
	('Misery', 'Thriller', 1990, 7, 2),
	('The Power Of The Dog', 'Western', 2021, 6, 1),
	('Hell or High Water', 'Western', 2016, 8, 1),
	('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
	('Unforgiven', 'Western', 1992, 7, 3);

SELECT title, genre, release_year, score, name director FROM films LEFT JOIN directors ON films.director_id = directors.id;

-- Extension 3
SELECT directors.name, COUNT(films.id) FROM directors INNER JOIN films ON directors.id = films.director_id GROUP BY directors.id;

