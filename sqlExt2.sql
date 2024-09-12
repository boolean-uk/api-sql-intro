CREATE TABLE films2 (
id SERIAL,
title TEXT NOT NULL,
genre TEXT NOT NULL,
releaseYear INTEGER NOT NULL,
rating INTEGER NOT NULL,
directorId INTEGER NOT NULL
);

INSERT INTO films2
	(title,genre,releaseYear,rating,directorId)
VALUES
	('The Shawshank Redemption','Drama',1994,9,1),
	('The Godfather','Crime',1972,9,2),
	('The Dark Knight','Action',2008,9,3),
	('Alien','SciFi',1979,9,3),
	('Total Recall','SciFi',1990,8,2),
	('The Matrix','SciFi',1999,8,1),
	('The Matrix Resurrections','SciFi',2021,5,4),
	('The Matrix Reloaded','SciFi',2003,6,3),
	('The Hunt for Red October','Thriller',1990,7,1),
	('Misery','Thriller',1990,7,1),
	('The Power of The Dog','Western',2021,6,3),
	('Hell or High Water','Western',2016,8,2),
	('The Good, The Bad and The Ugly','Western',1966,9,2),
	('Unforgiven','Western',1992,7,1);
	
CREATE TABLE directors (
id SERIAL,
name TEXT NOT NULL
);

INSERT INTO directors
	(name)
VALUES
	('Knut Rostad'),
	('Dave Ames'),
	('Some guy from Oslo'),
	('John R. President');

SELECT * FROM films2

SELECT * FROM directors

SELECT * FROM films2 join directors on directorId = directors.id
