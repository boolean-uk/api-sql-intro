CREATE TABLE films(
filmId SERIAL PRIMARY KEY,
title TEXT,
genre TEXT,
year INT,
score INT,
UNIQUE(title));

INSERT INTO films(title, genre, year, score)
VALUES(
('The Shawshank Redemption', 'Drama', 1994, 9);

VALUES('The Godfather', 'Crime', 1972, 9);

VALUES('The Dark Knight', 'Action', 2008, 9);

VALUES('Alien', 'SciFi', 1979, 9);

VALUES('Total Recall', 'SciFi', 1990, 8);

VALUES('The Matrix', 'SciFi', 1999, 8);

VALUES('The Matrix Resurrections', 'SciFi', 2021, 5);

VALUES('The Matrix Reloaded', 'SciFi', 1972, 9);

VALUES('The Hunt for Red October', 'Thriller', 1990, 7);

VALUES('Misery', 'Thriller', 1990, 7);

VALUES('The Power Of The Dog', 'Western', 2021, 6);

VALUES('Hell or High Water', 'Western', 2016, 8);

VALUES('The Good the Bad and the Ugl', 'Western', 1966, 9);

VALUES('Unforgiven', 'Western', 1992, 7);


SELECT * FROM films;

SELECT title,score FROM films ORDER BY score DESC;

SELECT title,year FROM films ORDER BY year ASC;

SELECT title,score FROM films WHERE score BETWEEN 8 AND 9;

SELECT title,score FROM films WHERE score BETWEEN 5 AND 7;

SELECT title,YEAR FROM films WHERE year = 1990;

SELECT title,YEAR FROM films WHERE year BETWEEN 1966 and 2000;

SELECT title,YEAR FROM films WHERE year BETWEEN 1990 and 2021;

SELECT title,YEAR FROM films WHERE year BETWEEN 1990 and 1999;

SELECT title,genre FROM films WHERE genre = 'SciFi';

SELECT title,genre FROM films WHERE genre LIKE 'Western' OR genre = 'SciFi';

SELECT title,genre FROM films WHERE genre != 'SciFi';

SELECT genre,year FROM films WHERE genre LIKE 'Western' and year BETWEEN 1966 and 2000;

SELECT title FROM films WHERE title LIKE '%Matrix%'
