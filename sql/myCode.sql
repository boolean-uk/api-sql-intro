DROP TABLE IF EXISTS films;

CREATE TABLE IF NOT EXISTS films(
id serial PRIMARY KEY,
title VARCHAR(255) not null UNIQUE ,
genre VARCHAR(255) not null,
release_year int not null,
score int not null CHECK (score >= 0 and score <= 10)
);
-- table created


-- insert items into table
insert into films(title, genre, release_year, score, ) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
insert into films(title, genre, release_year, score) VALUES ('The Godfather', 'Crime', 1972, 9);
insert into films(title, genre, release_year, score) VALUES ('The Dark Knight', 'Action', 2008, 9);
insert into films(title, genre, release_year, score) VALUES ('Alien', 'SciFi', 1979, 9);
insert into films(title, genre, release_year, score) VALUES ('Total Recall', 'SciFi', 1990, 8);
insert into films(title, genre, release_year, score) VALUES ('The Matrix', 'SciFi', 1999, 8);
insert into films(title, genre, release_year, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
insert into films(title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
insert into films(title, genre, release_year, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7);
insert into films(title, genre, release_year, score) VALUES ('Misery', 'Thriller', 1990, 7);
insert into films(title, genre, release_year, score) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
insert into films(title, genre, release_year, score) VALUES ('Hell or High Water', 'Western', 2016, 8);
insert into films(title, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
insert into films(title, genre, release_year, score) VALUES ('Unforgiven', 'Western', 1992, 7);

-- Write SQL SELECT statements to return films matching the below criteria:

--All films
SELECT * FROM films;

--All films ordered by rating descending
SELECT * 
FROM films
ORDER BY score DESC;

--All films ordered by release year ascending
SELECT * 
FROM films
ORDER BY release_year ASC;

--All films with a rating of 8 or higher
SELECT * 
FROM films
WHERE score >= 8;

--All films with a rating of 7 or lower
SELECT * 
FROM films
WHERE score <= 7;

--films released in 1990
SELECT * 
FROM films
WHERE release_year = 1990;

--films released before 2000
SELECT * 
FROM films
WHERE release_year < 2000;

--films released after 1990
SELECT * 
FROM films
WHERE release_year > 1990;

--films released between 1990 and 1999
SELECT * 
FROM films
WHERE release_year >= 1990 and release_year <= 1999;

--films with the genre of "SciFi"
SELECT * 
FROM films
WHERE genre = 'SciFi';

--films with the genre of "Western" or "SciFi"
SELECT * 
FROM films
WHERE genre = 'SciFi' or genre = 'Western';

--films with any genre apart from "SciFi"
SELECT * 
FROM films
WHERE genre != 'SciFi';

--films with the genre of "Western" released before 2000
SELECT * 
FROM films
WHERE genre = 'Western' and release_year < 2000;

--films that have the world "Matrix" in their title
SELECT * 
FROM films
WHERE title like '%Matrix%';




--Extension 1
--Write a SQL SELECT statements to:

--Return the average film rating
SELECT AVG(score)
FROM films;

--Return the total number of films
SELECT count(*)
FROM films;

--Return the average film rating by genre
SELECT genre, AVG(score) 
FROM films
GROUP BY genre;


--Extension 2
--Create a new directors table. Each director should have a name and a unique director id. Recreate your films table and add a directorId column. Insert a few director records (the data does not need to be real, you can just make directors up). Re-insert your film data, updating each film ao it will have a directorId. Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.
DROP TABLE IF EXISTS films;

CREATE TABLE IF NOT EXISTS films(
id serial PRIMARY KEY,
title VARCHAR(255) not null UNIQUE ,
genre VARCHAR(255) not null,
release_year int not null,
score int not null CHECK (score >= 0 and score <= 10),
directorId int not null
);
-- table created


-- insert items into table
insert into films(title, genre, release_year, score, directorId) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9, 1);
insert into films(title, genre, release_year, score, directorId) VALUES ('The Godfather', 'Crime', 1972, 9, 2);
insert into films(title, genre, release_year, score, directorId) VALUES ('The Dark Knight', 'Action', 2008, 9, 3);
insert into films(title, genre, release_year, score, directorId) VALUES ('Alien', 'SciFi', 1979, 9, 4);
insert into films(title, genre, release_year, score, directorId) VALUES ('Total Recall', 'SciFi', 1990, 8, 5);
insert into films(title, genre, release_year, score, directorId) VALUES ('The Matrix', 'SciFi', 1999, 8, 6);
insert into films(title, genre, release_year, score, directorId) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5, 6);
insert into films(title, genre, release_year, score, directorId) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6, 6);
insert into films(title, genre, release_year, score, directorId) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7, 7);
insert into films(title, genre, release_year, score, directorId) VALUES ('Misery', 'Thriller', 1990, 7, 7);
insert into films(title, genre, release_year, score, directorId) VALUES ('The Power Of The Dog', 'Western', 2021, 6, 3);
insert into films(title, genre, release_year, score, directorId) VALUES ('Hell or High Water', 'Western', 2016, 8, 2);
insert into films(title, genre, release_year, score, directorId) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9, 2);
insert into films(title, genre, release_year, score, directorId) VALUES ('Unforgiven', 'Western', 1992, 7, 2);


DROP TABLE IF EXISTS directors;

CREATE TABLE IF NOT EXISTS directors (
id serial PRIMARY KEY,
directorName VARCHAR(255) not null ,
directorId int not null UNIQUE
);

INSERT INTO directors(directorName, directorId) VALUES ('Joe Rogan', 1);
INSERT INTO directors(directorName, directorId) VALUES ('Arnold Schwarzenegger', 2);
INSERT INTO directors(directorName, directorId) VALUES ('Morpheus', 6);
INSERT INTO directors(directorName, directorId) VALUES ('John doe', 4);
INSERT INTO directors(directorName, directorId) VALUES ('Nigel Sibbert', 5);
INSERT INTO directors(directorName, directorId) VALUES ('Jack Sparrow', 3);
INSERT INTO directors(directorName, directorId) VALUES ('Ogre Shrek', 7);

SELECT 
title, directorName
FROM directors
INNER JOIN films
ON directors.directorId = films.directorId;



--Extension 3
--Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT
directors.directorName, count(films.id) AS filmAmount
FROM directors
INNER JOIN films
ON directors.directorId = films.directorId
GROUP BY directors.directorName;
