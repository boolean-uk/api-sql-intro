--
--Exercise Core
--

--CREATE
CREATE TABLE films(
id serial primary key,
title varchar(255) not null,
genre varchar(255) not null,
releaseYear integer not null,
rating integer,
director integer
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

--
-- Extension 1
--* Return the average film rating
SELECT AVG(rating) from films;
--* Return the total number of films
SELECT count(*) from films;
--* Return the average film rating by genre
SELECT avg(rating), genre from films group by genre;

--
-- Extension 2
CREATE TABLE directors(
id integer primary key autoincrement,
name varchar(255),
)

insert into directors (name)
values ('Steven Spielberg'), ('Christopher Nolan'), ('Quentin Tarantino');

CREATE TABLE films(
id SERIAL PRIMARY KEY ,
title varchar(255) not null,
genre varchar(255) not null,
releaseYear integer not null,
rating integer,
director integer,
foreign key (director) references directors(id)
)

--INSERT
INSERT INTO films (title, genre, releaseYear, rating, director)
VALUES ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
       ('The Godfather', 'Crime', 1972, 9, 2),
       ('The Dark Knight', 'Action', 2008, 9, 2),
       ('Alien', 'SciFi', 1979, 9, 3);

--* Using and SQL JOIN, write a SELECT statement that returns a list of films with their director
SELECT * from films join directors on directors.id = films.director;

--
-- Extension 3
SELECT count(*), directors.name
from films2
join directors on directors.id = films2.director
group by directors.name;