
CREATE TABLE directors(
	id serial PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	UNIQUE(name)
)

INSERT INTO directors (name)
VALUES
	('Frank Darabont'),
    ('Francis Ford Coppola'),
    ('Christopher Nolan'),
    ('Ridley Scott'),
    ('Paul Verhoeven'),
    ('Lana Wachowski'),
    ('John McTiernan'),
    ('Rob Reiner'),
    ('Jane Campion'),
    ('David Mackenzie'),
    ('Sergio Leone'),
    ('Clint Eastwood');

CREATE TABLE films(
	id serial PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	genre VARCHAR(50) NOT NULL,
	release_year INTEGER NOT NULL,
	score INTEGER,
    directorId NOT NULL,
	UNIQUE(title)
)

INSERT INTO films (title, genre, release_year, score, directorId)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9, 1),
	('The Godfather', 'Crime', 1972, 9, 2),
	('The Dark Knight', 'Action', 2008, 9, 3),
	('Alien', 'SciFi', 1979, 9, 4),
	('Total Recall', 'SciFi', 1990, 8, 5),
	('The Matrix', 'SciFi', 1999, 8, 6),
	('The Matrix Resurrections', 'SciFi', 2021, 5, 6),
	('The Matrix Reloaded', 'SciFi', 2003, 6, 6),
	('The Hunt for Red October', 'Thriller', 1990, 7, 7),
	('Misery', 'Thriller', 1990, 7, 8),
	('The Power Of The Dog', 'Western', 2021, 6, 9),
	('Hell or High Water', 'Western', 2016, 8, 10),
	('The Good the Bad and the Ugly', 'Western', 1966, 9, 11),
	('Unforgiven', 'Western', 1992, 7, 12);

SELECT * FROM films JOIN directors ON films.directorid = directors.id;