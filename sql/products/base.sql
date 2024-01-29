--Create
CREATE TABLE films(
	id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	genre VARCHAR(255),
	r_year INTEGER,
	score INTEGER
);

--Insert
INSERT INTO films (title, genre, r_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9),
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
('Unforgiven', 'Western', 1992, 7);

--SELECT ALL
SELECT * from films;

--SELECT ALL ORDERED BY RATING DESC
SELECT * FROM films ORDER BY score DESC;

--SELECT ALL ORDERED BY REALEASE YEAR ASC
SELECT * FROM films ORDER BY r_year ASC;

--SELECT ALL FILMS WITH SCORE>=8
SELECT * FROM films WHERE score>=8;

--SELECT ALL FILMS WITH SCORE <=7
SELECT * FROM films WHERE score<=7;

--SELECT ALL FILMS RELEASED IN 1990
SELECT * FROM films WHERE r_year=1990;

--SELECT ALL FILMS RELEASED BEFORE 2000;
SELECT * FROM films WHERE r_year<2000;

--SELECT ALL FILMS RELEASED AFTER 1990;
SELECT * FROM films WHERE r_year>1990;

--SELECT ALL FILMS RELEASED BETWEEN 1990 and 1999
SELECT * FROM films WHERE r_year>=1990 AND r_year<=1999;

--SELECT SCIFI
SELECT * FROM films WHERE genre='SciFi';

--SELECT Western and SciFi
SELECT * FROM films WHERE genre='SciFi' OR genre='Western';

--SELECT NOT SciFi
SELECT * FROM films WHERE genre!='SciFi';

--Pre 2000 western
SELECT * FROM films WHERE genre='Western' AND r_year<2000;

--Matrix
SELECT * FROM films WHERE title LIKE '%Matrix%';
