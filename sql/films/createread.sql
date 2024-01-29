CREATE TABLE films (
	id serial primary key,
	name VARCHAR(255) unique,
	genre VARCHAR(255),
	release_year integer, 
	score integer
)

INSERT INTO films (name, genre, release_year, score) VALUES 
('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good, the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7);

--SELECT * from films

--SELECT * from films ORDER BY release_year ASC

--SELECT * from films WHERE score >= 8

--SELECT * from films WHERE score <= 7

--SELECT * from films WHERE release_year = 1990

--SELECT * from films where release_year < 2000

--SELECT * from films where release_year > 1990

--SELECT * from films where release_year > 1989 AND release_year < 2000

--SELECT * from films where genre = 'SciFi'

--SELECT * from films where genre LIKE 'SciFi%' OR genre like 'Western'

--SELECT * from films where genre != 'SciFi'

--SELECT * from films where genre = 'Western' AND release_year < 2000

--SELECT * from films where name LIKE '%Matrix%'