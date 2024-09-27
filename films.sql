CREATE TABLE films(
id serial primary key,
title varchar(255) not null,
genre varchar(255) not null,
release_year int not null,
score int not null,
unique(title)
);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Godfather', 'Crime', 1972, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Dark Knight', 'Action', 2008, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('Alien', 'SciFi', 1979, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('Total Recall', 'SciFi', 1990, 8;
INSERT INTO films(title, genre, release_year, score) VALUES ('The Matrix', 'SciFi', 1999, 8);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7);
INSERT INTO films(title, genre, release_year, score) VALUES ('Misery', 'Thriller', 1990, 7);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
INSERT INTO films(title, genre, release_year, score) VALUES ('Hell or High Water', 'Western', 2016, 8);
INSERT INTO films(title, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
INSERT INTO films(title, genre, release_year, score) VALUES ('Unforgiven', 'Western', 1992, 7);

--1. all films
SELECT title FROM films;

--2. all films ordered by rating descending
SELECT * 
FROM films
ORDER BY score DESC;

--3. All films ordered by release year ascending
SELECT *
FROM films
ORDER BY release_year ASC;

--4. All films with a rating of 8 or higher
SELECT *
FROM films
WHERE score >= 8;

--5. All films with a rating of 7 or lower
SELECT *
FROM films
WHERE score <= 7;

--6. films released in 1990
SELECT *
FROM films
WHERE release_year = 1990;

--7. films released before 2000
SELECT *
FROM films
WHERE release_year < 2000;

--8. films released after 1990
SELECT *
FROM films
WHERE release_year > 1990;

--9. films released between 1990 and 1999
SELECT *
FROM films
WHERE release_year BETWEEN  1990 AND 1999;

--10. films with the genre of "SciFi"
SELECT *
FROM films
WHERE genre = 'SciFi';

--11. films with the genre of "Western" or "SciFi"
SELECT *
FROM films
WHERE genre = 'Western' OR genre = 'SciFi';

--12. films with any genre apart from "SciFi"
SELECT *
FROM films
WHERE genre != 'SciFi';

--13. films with the genre of "Western" released before 2000
SELECT *
FROM films
WHERE genre = 'Western'  AND release_year < 2000;

--14. films that have the world "Matrix" in their title / research with LIKE keyword
SELECT *
FROM films
WHERE title LIKE '%Matrix%';


--EXTENSION 1
--1. return the average film reating
SELECT AVG(score)
FROM films;


--2.Return the total number of films
SELECT COUNT(title)
FROM films;

--3. Return the average film rating by genre
SELECT AVG(score)
FROM films
GROUP BY genre;


