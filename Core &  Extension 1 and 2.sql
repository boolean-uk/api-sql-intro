-- CREATING THE TABLE 'FILMS'
CREATE TABLE IF NOT EXISTS films (
    id SERIAL PRIMARY KEY,
    title TEXT,
    genre TEXT,
    release_year INTEGER,
    score INTEGER
);


-- ADDING VALUES TO THE FILMS TABLE
INSERT INTO films
(title, genre, release_year, score)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1974, 9),
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

-- THE CORE EXERCISES ARE FOUND BELOW
-- All films
SELECT * FROM films;

-- All films ordered by rating descending
SELECT * FROM films
ORDER BY score DESC;

-- All films ordered by release year ascending
SELECT * FROM films
ORDER BY release_year ASC;

-- All films with a rating of 8 or higher
SELECT * FROM films
WHERE score >= 8;

-- All films with a rating of 7 or lower
SELECT * FROM films
WHERE score <= 7;

-- films released in 1990
SELECT * FROM films
WHERE release_year = 1990;

-- films released before 2000
SELECT * FROM films
WHERE release_year < 2000;

-- films released after 1990
SELECT * FROM films
WHERE release_year > 1990;

-- films released between 1990 and 1999
SELECT * FROM films
WHERE release_year BETWEEN 1990 AND 1999;

-- films with the genre of 'SciFi'
SELECT * FROM films
WHERE genre = 'SciFi';

-- films with the genre of 'Western' or 'SciFi'
SELECT * FROM films
WHERE genre = 'Western' OR genre = 'SciFi';

-- films with any genre *apart* from 'SciFi'
SELECT * FROM films
WHERE genre != 'SciFi';

-- films with the genre of 'Western' released before 2000
SELECT * FROM films
WHERE genre = 'Western' AND release_year <2000;

-- films that have the world 'Matrix' in their title
SELECT * FROM films
WHERE title LIKE '%Matrix%';

------------------------
-- EXTENSION ONE
------------------------


-- Return the average film rating
SELECT AVG(score)
FROM films;
-- Return the total number of films
SELECT COUNT(title)
FROM films;
-- Return the average film rating by genre
-->>>>>>>> AVG FOR DRAMA : 9
SELECT AVG(score)
FROM films
WHERE genre = 'Drama';
-->>>>>>>> AVG FOR WESTERN : 7.5
SELECT AVG(score)
FROM films
WHERE genre = 'Western';
-->>>>>>>> AVG FOR CRIME : 9
SELECT AVG(score)
FROM films
WHERE genre = 'Crime';
-->>>>>>>> AVG FOR ACTION : 9
SELECT AVG(score)
FROM films
WHERE genre = 'Action';
-->>>>>>>> AVG FOR SciFi = 7.2
SELECT AVG(score)
FROM films
WHERE genre = 'SciFi';
-->>>>>>>> AVG FOR THRILLER : 7
SELECT AVG(score)
FROM films
WHERE genre = 'Thriller';

Create a new directors table. Each director should have a name and a unique director id.
Recreate your films table and add a directorId column.
Insert a few director records (the data does not need to be real,
you can just make directors up). Re-insert your film data, updating each film with have a directorId.
Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.


--CREATING DIRECTORS TABLE
CREATE TABLE IF NOT EXISTS directors (
    directorId SERIAL PRIMARY KEY,
    name TEXT
);

--Added values to the directors table
INSERT INTO directors
(directorid, name)
VALUES
(1, 'Roronoa Zoro'),
(2, 'Monkey D Luffy'),
(3, 'Uzumaki Naruto'),
(4, 'Gojo Satoru'),
(5, 'Sukuna');

--CREATING NEW FILMS TABLE AND ADDING DIRECTORID
--(figured remaking the table is easier than adjusting the old one)
CREATE TABLE IF NOT EXISTS exFilms (
    id SERIAL PRIMARY KEY,
    title TEXT,
    genre TEXT,
    release_year INTEGER,
    score INTEGER,
    directorId INTEGER
);

-- Added films to the new films table
INSERT INTO films
(title, genre, release_year, score, directorId)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 4),
('The Godfather', 'Crime', 1974, 9, 3),
('The Dark Knight', 'Action', 2008, 9, 2),
('Alien', 'SciFi', 1979, 9, 5),
('Total Recall', 'SciFi', 1990, 8,2),
('The Matrix', 'SciFi', 1999, 8, 4),
('The Matrix Resurrections', 'SciFi', 2021, 5,1),
('The Matrix Reloaded', 'SciFi', 2003, 6,3),
('The Hunt for Red October', 'Thriller', 1990, 7,4),
('Misery', 'Thriller', 1990, 7,4),
('The Power Of The Dog', 'Western', 2021, 6,5),
('Hell or High Water', 'Western', 2016, 8,3),
('The Good the Bad and the Ugly', 'Western', 1966, 9,1),
('Unforgiven', 'Western', 1992, 7,2);

--Core to make the 2nd extension exercise work (using JOIN)
SELECT exfilms.*, directors.name
FROM exfilms
INNER JOIN directors ON exfilms.directorid = directors.directorid;

-- Selecting random table data instead of * to practice
SELECT exfilms.id, exfilms.title,exfilms.genre, exfilms.release_year,directors.directorid, directors.name
FROM exfilms
INNER JOIN directors ON exfilms.directorid = directors.directorid
WHERE exfilms.genre != 'Crime';














