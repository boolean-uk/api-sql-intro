--create table

--CORE
CREATE TABLE films (
id serial primary key,
title varchar(255) unique not null,
genre varchar(255) not null,
release_year int not null,
score int not null
)

INSERT INTO films (title, genre, release_year, score) VALUES
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
;

SELECT * FROM films;
SELECT * FROM films ORDER BY score DESC;
SELECT * FROM films ORDER BY release_year ASC;
SELECT * FROM films WHERE score>=8;
SELECT * FROM films WHERE score<=7;
SELECT * FROM films WHERE release_year = 1990;
SELECT * FROM films WHERE release_year < 2000;
SELECT * FROM films WHERE release_year > 1990;
SELECT * FROM films WHERE release_year >=1990 AND release_year<=1999;
SELECT * FROM films WHERE genre='SciFi';
SELECT * FROM films WHERE genre='SciFi' OR genre='Western';
SELECT * FROM films WHERE NOT genre='SciFi';
SELECT * FROM films WHERE genre='Western' AND release_year<2000;
SELECT * FROM films WHERE title LIKE '%Matrix%';

--EXTENSION 1
SELECT AVG(score) FROM films;
SELECT COUNT(id) FROM films;
SELECT genre, AVG(score) FROM films GROUP BY genre;

--EXTENSION 2
CREATE TABLE directors(
id serial primary key,
name varchar(255) unique not null)

INSERT INTO directors(name) VALUES
('Quentin Tarantino'),
('Jane Doe'),
('Bruce Lee');

SELECT * FROM directors;

CREATE TABLE films2 (
id serial primary key,
title varchar(255) unique not null,
genre varchar(255) not null,
release_year int not null,
score int not null,
directorId int not null
)

INSERT INTO films2 (title, genre, release_year, score, directorId) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 3),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', 1999, 8, 1),
('The Matrix Resurrections', 'SciFi', 2021, 5, 2),
('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
('The Hunt for Red October', 'Thriller', 1990, 7, 1),
('Misery', 'Thriller', 1990, 7, 3),
('The Power Of The Dog', 'Western', 2021, 6, 3),
('Hell or High Water', 'Western', 2016, 8, 2),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
('Unforgiven', 'Western', 1992, 7, 3)
;

SELECT title, name FROM films2 LEFT JOIN directors ON films2.directorId = directors.id;

--EXTENSION 3
SELECT COUNT(title) AS nr_films, name FROM films2 LEFT JOIN directors ON films2.directorId = directors.id GROUP BY name;
