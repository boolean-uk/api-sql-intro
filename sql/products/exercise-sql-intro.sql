--
--Exercise Core
--

--CREATE
CREATE TABLE films(
id integer primary key AUTOINCREMENT,
title varchar(255) not null,
genre varchar(255) not null,
releaseYear integer not null,
rating integer,
)

--INSERT
INSERT INTO films (title, genre, releaseYear, rating)
VALUES ('The Shawshank Redemption', 'Drama', 1994, 9),
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

--SELECT STATEMENTS
--All films
SELECT * from films;

--* All films ordered by rating descending
SELECT * from films ORDER BY rating DESC;

--* All films ordered by release year ascending
SELECT * from films ORDER BY releaseYear ASC;

--* All films with a rating of 8 or higher
SELECT * from films WHERE rating >= 8;

--* All films with a rating of 7 or lower
SELECT * from films WHERE rating <= 7;

--* films released in 1990
SELECT * from films WHERE releaseYear = 1990;

--* films released before 2000
SELECT * from films WHERE releaseYear < 2000;

--* films released after 1990
SELECT * from films WHERE releaseYear > 1990;

--* films released between 1990 and 1999
SELECT * from films WHERE releaseYear >= 1990 and releaseYear <= 1999;

--* films with the genre of "SciFi"
SELECT * from films WHERE genre = "SciFi";

--* films with the genre of "Western" or "SciFi"
SELECT * from films WHERE genre = "SciFi" OR genre = "Western";

--* films with any genre *apart* from "SciFi"
SELECT * from films WHERE NOT genre = "SciFi";

--* films with the genre of "Western" released before 2000
SELECT * from films WHERE genre = "Western" AND releaseYear < 2000;

--* films that have the world "Matrix" in their title
SELECT * from films WHERE title LIKE '%Matrix%';

--
-- Exercise Extensions
--

-- Extension 1

--* Return the average film rating
select AVG(rating) from films;
--* Return the total number of films
select count(*) from films;
--* Return the average film rating by genre
select avg(rating), genre from films group by genre;