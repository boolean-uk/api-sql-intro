CREATE TABLE IF NOT EXISTS directors (
 id SERIAL PRIMARY KEY,
 name TEXT NOT NULL
);

INSERT INTO directors
	(name)
VALUES
	('Marit'),
	('Karen'),
	('Elin'),
	('Mia'),
	('Cecilie'),
	('Nora');

CREATE TABLE IF NOT EXISTS films_with_director (
 id SERIAL PRIMARY KEY,
 title TEXT NOT NULL,
 genre TEXT NOT NULL,
 release_year int NOT NULL,
 score int NOT NULL,
 directorId INT,
 FOREIGN KEY (directorId) REFERENCES directors(id),
 UNIQUE(title)
);

INSERT INTO films_with_director
	(title, genre, release_year, score, directorId)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9, 1),
	('The Godfather', 'Crime', 1972, 9, 1),
	('The Dark Knight', 'Action', 2008, 9, 2),
	('Alien', 'SciFi', 1979, 9, 3),
	('Total Recall', 'SciFi', 1990, 8, 3),
	('The Matrix', 'SciFi', 1999, 8, 5),
	('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
	('The Matrix Reloaded', 'SciFi', 2003, 6, 6),
	('The Hunt for Red October', 'Thriller', 1990, 7, 1),
	('Misery', 'Thriller', 1990, 7, 4),
	('The Power Of The Dog', 'Western', 2021, 6, 4),
	('Hell or High Water', 'Western', 2016, 8, 1),
	('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
	('Unforgiven', 'Western', 1992, 7, 4);

SELECT films_with_director.title AS film_title, directors.name AS director_name
	FROM films_with_director
	INNER JOIN directors
	ON films_with_director.directorId = directors.id;