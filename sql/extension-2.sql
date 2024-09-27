DROP TABLE "public"."films";

CREATE TABLE films(
	id serial primary key,
	title varchar(255),
	genre varchar(50),
	release_year integer,
	score integer,
    director_id integer
);

INSERT INTO films (title, genre, release_year, score, director_id)
VALUES
	('The Shawshank Redemption', 'Drama', 1994, 9, 1),
	('The Godfather', 'Crime', 1972, 9, 1),
	('The Dark Knight', 'Action', 2008, 9, 1),
	('Alien', 'SciFi', 1979, 9, 2),
	('Total Recall', 'SciFi', 1990, 8, 1),
	('The Matrix', 'SciFi', 1999, 8, 2),
	('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
	('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
	('The Hunt for Red October', 'Thriller', 1990, 7, 3),
	('Misery', 'Thriller', 1990, 7, 3),
	('The Power Of The Dog', 'Western', 2021, 6, 4),
	('Hell or High Water', 'Western', 2016, 8, 2),
	('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
	('Unforgiven', 'Western', 1992, 7, 1);

CREATE TABLE directors(
	id serial primary key,
	name varchar(255)
);

INSERT INTO directors (name)
VALUES
	('Kristian Verduin'),
	('Another cool director'),
	('This is a cool director'),
	('This director is bad');

SELECT * FROM films JOIN directors ON films.director_id = directors.id;