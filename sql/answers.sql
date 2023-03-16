-- CORE

CREATE TABLE films(
 id serial primary key,
 title VARCHAR(255) not null,
 genre VARCHAR(255) not null,
 release_year int not null,
 score int not NULL,
 UNIQUE(title)
 );
 
INSERT INTO films(title, genre, release_year, score) VALUES 
 	('The Shawshank Redemption', 'Drama', 1994, 9),
	('The Godfather', 'Crime', 1972, 9),
	('The Dark Knight', 'Action', 2008, 9),
	('Alien', 'SciFi', 1979, 9),
	('Total Recall', 'SciFi', 1990, 8),
	('The Matrix', 'SciFi', 1999, 8),
	('The Matrix Resurrections', 'SciFi', 2021, 5),
	('The Matrix Reloaded', 'SciFi', 2003, 6),
	('The Hunt for Red October','Thriller', 1990, 7),
	('Misery', 'Thriller', 1990, 7),
	('The Power Of The Dog', 'Western', 2021, 6),
	('Hell or High Water', 'Western', 2016, 8),
	('The Good the Bad and the Ugly', 'Western', 1966, 9),
	('Unforgiven', 'Western', 1992, 7);
	
SELECT * FROM films;
SELECT * FROM films ORDER BY score DESC;
SELECT * FROM films ORDER BY release_year ASC;
SELECT * FROM films WHERE score>=8;
SELECT * FROM films WHERE score<=7;
SELECT * FROM films WHERE release_year=1990;
SELECT * FROM films WHERE release_year<2000;
SELECT * FROM films WHERE release_year>1990;
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;
SELECT * FROM films WHERE genre='SciFi';
SELECT * FROM films WHERE genre='Western' OR genre='SciFi';
SELECT * From films WHERE genre!='SciFi';
SELECT * FROM films WHERE genre='Western' AND release_year<2000;
SELECT * FROM films WHERE title LIKE '%Matrix%';


-- EXTENSION 1

SELECT AVG(score) FROM films;
SELECT COUNT(id) FROM films;
SELECT genre, AVG(score) FROM films GROUP BY genre;

-- EXTENSION 2

DROP TABLE films;

CREATE TABLE films(
 id serial primary key,
 title VARCHAR(255) not null,
 genre VARCHAR(255) not null,
 "directorID" int not null,
 release_year int not null,
 score int not NULL,
 UNIQUE(title)
 );

 INSERT INTO films(title, genre, "directorID", release_year, score) VALUES 
 	('The Shawshank Redemption', 'Drama', 1, 1994, 9),
	('The Godfather', 'Crime', 2, 1972, 9),
	('The Dark Knight', 'Action', 2, 2008, 9),
	('Alien', 'SciFi', 1, 1979, 9),
	('Total Recall', 'SciFi', 3, 1990, 8),
	('The Matrix', 'SciFi', 3, 1999, 8),
	('The Matrix Resurrections', 'SciFi', 3, 2021, 5),
	('The Matrix Reloaded', 'SciFi', 1, 2003, 6),
	('The Hunt for Red October','Thriller', 2, 1990, 7),
	('Misery', 'Thriller', 2, 1990, 7),
	('The Power Of The Dog', 'Western', 3, 2021, 6),
	('Hell or High Water', 'Western', 3, 2016, 8),
	('The Good the Bad and the Ugly', 'Western', 1, 1966, 9),
	('Unforgiven', 'Western', 2, 1992, 7);

CREATE TABLE directors(
 "directorID" serial PRIMARY KEY,
 director VARCHAR(255) NOT NULL,
 UNIQUE(director)
 );
 
 DROP TABLE directors;

INSERT INTO directors(director) VALUES
	('Test 1'),
	('Test 2'),
	('Creative Name');

SELECT * FROM films INNER JOIN directors ON films."directorID"=directors."directorID";

EXTENSION 3; 

SELECT director, COUNT(*) FROM films INNER JOIN directors ON films."directorID"=directors."directorID" GROUP BY director;