CREATE TABLE directors(
	name TEXT,
	director_id SERIAL PRIMARY KEY
);


INSERT INTO directors (name)
VALUES
	('David'),
	('Rose'),
	('Jack'),
	('Bella');


CREATE TABLE films(
	id SERIAL PRIMARY KEY,
	title TEXT UNIQUE,
	director_id INTEGER REFERENCES directors(director_id),
	genre TEXT,
	release_year INTEGER,
	score INTEGER


);



INSERT INTO films (title, director_id, genre, release_year, score)

VALUES
	('The Shawshank Redemption', 1,'Drama', 1994, 9),
	('The Godfather', 1, 'Crime', 1972, 9),
	('The Dark Knight', 1, 'Action', 2008, 9),
	('Alien', 2, 'SciFi', 1979, 9),
	('Total Recall', 2, 'SciFi', 1990, 8),
	('The Matrix', 3,'SciFi', 1999, 8),
	('The Matrix Resurrections', 3, 'SciFi', 2021, 5),
	('The Matrix Reloaded', 4, 'SciFi', 2003, 6),
	('The Hunt for Red October', 4, 'Thriller', 1990, 7),
	('Misery', 4,  'Thriller', 1990, 7),
	('The Power Of The Dog', 2, 'Western', 2021, 6),
	('Hell or High Water', 3, 'Western', 2016, 8),
	('The Good the Bad and the Ugly', 3, 'Western', 1966, 9),
	('Unforgiven', 1, 'Western', 1992, 7);


select films.title as film_title, directors.name as director_name from films inner join directors on directors.director_id = films.director_id;



select count(title), directors.name from films inner join directors on films.director_id = directors.director_id group by directors.name;

