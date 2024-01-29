-- Create new table of directors
/*
CREATE TABLE directors (
	directorId serial primary key,
	name varchar(255) NOT NULL
);
*/


-- Generating some directors
INSERT INTO directors (name) 
VALUES 
	('Frank Darabont'),
    ('Francis Ford Coppola'),
    ('Christopher Nolan'),
    ('Ridley Scott'),
    ('Paul Verhoeven'),
    ('The Wachowskis'),
    ('Lana Wachowski'),
    ('John McTiernan'),
    ('Rob Reiner'),
    ('Jane Campion'),
    ('David Mackenzie'),
    ('Sergio Leone'),
    ('Clint Eastwood')
;

-- Recreate films table (using films_ex2 as new name to preserve old one)
CREATE TABLE films_ex2 (
	id serial primary key,
	title varchar(255) unique NOT NULL,
	genre varchar(255) NOT NULL,
	release_year integer NOT NULL,
	score integer CHECK(score >= 0 AND score <= 10) NOT NULL,
	directorId integer,
	CONSTRAINT fk_film 
		FOREIGN KEY(directorId)
			REFERENCES directors(directorId)
);

-- Insert the movies with their corresponding directorIds
-- Used chatGPT to match the movie to the director ID, so if there is any error i dont take any responsebility for that.
INSERT INTO films_ex2 (title, genre, release_year, score, directorId) 
VALUES 
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 2),
    ('The Dark Knight', 'Action', 2008, 9, 3),
    ('Alien', 'SciFi', 1979, 9, 4),
    ('Total Recall', 'SciFi', 1990, 8, 5),
    ('The Matrix', 'SciFi', 1999, 8, 6),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 7),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 6),
    ('The Hunt for Red October', 'Thriller', 1990, 7, 8),
    ('Misery', 'Thriller', 1990, 7, 9),
    ('The Power Of The Dog', 'Western', 2021, 6, 10),
    ('Hell or High Water', 'Western', 2016, 8, 11),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9, 12),
    ('Unforgiven', 'Western', 1992, 7, 13);


-- Select statement returning a list of films with their director
SELECT directors.name, films_ex2.title, films_ex2.Id 
FROM directors 
	JOIN films_ex2 
		ON directors.directorid = films_ex2.directorid
ORDER BY directors.name ASC
;
