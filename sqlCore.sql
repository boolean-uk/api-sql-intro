CREATE TABLE films (
id SERIAL,
title TEXT NOT NULL,
genre TEXT NOT NULL,
releaseYear INTEGER NOT NULL,
rating INTEGER NOT NULL
);

INSERT INTO films
	(title,genre,releaseYear,rating)
VALUES
	('The Shawshank Redemption','Drama',1994,9),
	('The Godfather','Crime',1972,9),
	('The Dark Knight','Action',2008,9),
	('Alien','SciFi',1979,9),
	('Total Recall','SciFi',1990,8),
	('The Matrix','SciFi',1999,8),
	('The Matrix Resurrections','SciFi',2021,5),
	('The Matrix Reloaded','SciFi',2003,6),
	('The Hunt for Red October','Thriller',1990,7),
	('Misery','Thriller',1990,7),
	('The Power of The Dog','Western',2021,6),
	('Hell or High Water','Western',2016,8),
	('The Good, The Bad and The Ugly','Western',1966,9),
	('Unforgiven','Western',1992,7);


SELECT * FROM films

SELECT * FROM films order by rating DESC

SELECT * FROM films order by releaseYear ASC

SELECT * FROM films where rating>7

SELECT * FROM films where rating<8

SELECT * FROM films where releaseYear = 1990

SELECT * FROM films where releaseYear < 2000

SELECT * FROM films where releaseYear between 1990 and 1999

SELECT * FROM films where genre like 'SciFi'

SELECT * FROM films where genre like 'SciFi' or genre like 'Western'

SELECT * FROM films where genre not like 'SciFi'

SELECT * FROM films where genre like 'Western' and releaseYear < 2000

SELECT * FROM films where title like '%Matrix%'
