--Extension 1
--Return the average film rating
--SELECT AVG(score) from films

--Return the total number of films
--SELECT COUNT(id) from films 

--Return the average film rating by genre
--SELECT AVG(score) from films GROUP BY genre

--Extension 2
/*
CREATE TABLE directors(
	id serial primary key,
	name varchar(255)	
)
*/

--INSERT into directors (name) VALUES ('Legendary Director') 
--INSERT into directors (name) VALUES ('Decent Director') 
--INSERT into directors (name) VALUES ('Another Director') 

/*
CREATE TABLE filmsExt (
id serial PRIMARY KEY,
title VARCHAR(99),
genre VARCHAR(50),
release_year INTEGER,
score INTEGER,
directorID INTEGER
)
*/
/*
INSERT INTO filmsExt (title, genre, release_year, score, directorID) 
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 2),
('The Godfather', 'Crime', 1972, 9, 1),
('The Dark Knight', 'Action', 2008, 9, 2),
('Alien', 'SciFi', 1979, 9, 1),
('Total Recall', 'SciFi', 1990, 8, 3),
('The Matrix', 'SciFi', 1999, 8, 1),
('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
('The Hunt for Red October', 'Thriller', 1990, 7, 3),
('Misery', 'Thriller', 1990, 7, 3),
('The Power Of The Dog', 'Western', 2021, 6, 3),
('Hell or High Water', 'Western', 2016, 8, 1),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven', 'Western', 1992, 7, 2);
*/
/*
SELECT filmsExt.title, directors.name AS director
FROM filmsExt
JOIN directors ON filmsExt.directorID = directors.id;
*/

--Extension 3

/*
SELECT directors.name AS director, COUNT(filmsExt.id) AS films_directed
FROM directors
LEFT JOIN filmsExt ON directors.id = filmsExt.directorID
GROUP BY directors.id, directors.name;
*/