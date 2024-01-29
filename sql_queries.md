QUERIES: 

to create table: 

create table films(
	id serial,
	title varchar (100),
	genre VARCHAR (50),
	release_year INTEGER,
	score INTEGER,
	primary key (id)
);

to insert records:

insert into films (title, genre, release_year, score)
VALUES

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
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7)


TO SELECT ALL RECORDS FROM THE TABLE:  

select * from films;
------------------------------------------

All films ordered by rating descending:

SELECT * from films
order by score DESC;
------------------------------------------

All films ordered by release year ascending:

SELECT * from films
order by release_year ASC;
------------------------------------------

All films with a rating of 8 or higher:

SELECT * from films
WHERE SCORE >= 8;
------------------------------------------

All films with a rating of 7 or lower:

SELECT * from films
WHERE SCORE <= 7;
------------------------------------------

films released in 1990:

SELECT * from films
WHERE release_year = 1990;
------------------------------------------

films released before 2000:

SELECT * from films
WHERE release_year < 2000;
------------------------------------------

films released after 1990:

SELECT * from films
WHERE release_year > 1990;
------------------------------------------

films released between 1990 and 1999:

SELECT * from films
WHERE release_year BETWEEN 1990 AND 1999;
------------------------------------------

films with the genre of "SciFi":

SELECT * from films
WHERE GENRE = 'SciFi';
------------------------------------------

films with the genre of "Western" or "SciFi":

SELECT * from films
where genre = 'SciFi' or genre = 'Western';
------------------------------------------

films with any genre apart from "SciFi":

SELECT * from films
where not genre = 'SciFi';
------------------------------------------

films with the genre of "Western" released before 2000:


SELECT * from films
where genre = 'Western' and release_year < 2000;
------------------------------------------

films that have the world "Matrix" in their title:


SELECT * from films
where title like '%Matrix%';
------------------------------------------



