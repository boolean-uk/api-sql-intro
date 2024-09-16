
CREATE TABLE films(
    id serial primary key,
    title varchar(255),
    genre varchar(50),
    release_year integer,
    score integer
);


INSERT INTO films(title, genre, release_year, score)
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
	('Unforgiven', 'Western', 1992, 7);



-- all films
SELECT * from films;

-- all films ordered by rating descending
SELECT * FROM films ORDER BY score DESC;

--All films ordered by release year ascending
SELECT * from films ORDER BY release_year ASC;


--All films with a rating of 8 or higher
SELECT * FROM films WHERE score >= 8;

--All films with a rating of 7 or lower
SELECT * FROM films WHERE score <= 7;


--films released in 1990
SELECT * FROM films WHERE release_year = 1990;

--films released before 2000
SELECT * FROM films WHERE release_year < 2000;


--films released after 1990
SELECT * FROM films WHERE release_year > 1990;

--films released between 1990 and 1999
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;

--films with the genre of "SciFi"
SELECT * FROM films WHERE genre = 'SciFi';

--films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre IN ('Western', 'SciFi');

--films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre <> 'SciFi';

--films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

--films that have the world "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%';

/*
-- Extrension 1 *****************************

Extension 1
Write a SQL SELECT statements to:

Return the average film rating
Return the total number of films
Return the average film rating by genre
For these, you will need to research COUNT, AVG and GROUP BY keywords in postgres.
*/ 

-- Return the average film rating
SELECT AVG(score) AS average_score FROM films;

-- Return the total number of films
SELECT COUNT (*) AS total_films FROM films;

-- Return the average film rating by genre
SELECT genre, AVG(score) As average_rating From films GROUP BY genre;



/* -------------Extension 2 --------------------
Create a new directors table. Each director should have a name and a unique director id. Recreate your films table and add a directorId column. Insert a few director records (the data does not need to be real, you can just make directors up). Re-insert your film data, updating each film with have a directorId. Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.
*/

CREATE TABLE directors (
    directorId serial PRIMARY KEY,
    name varchar(255) UNIQUE
);


INSERT INTO directors (name) VALUES
    ('Director A'),
    ('Director B'),
    ('Director C');


ALTER TABLE films
ADD COLUMN directorId integer REFERENCES directors(directorId);

UPDATE films
SET directorId = 1
WHERE title IN ('The Shawshank Redemption', 'The Dark Knight');

UPDATE films
SET directorId = 2
WHERE title IN ('The Godfather', 'Alien', 'The Matrix', 'The Matrix Resurrections', 'The Matrix Reloaded', 'Misery', 'Unforgiven');

UPDATE films
SET directorId = 3
WHERE title IN ('Total Recall', 'The Hunt for Red October', 'The Power Of The Dog', 'Hell or High Water', 'The Good the Bad and the Ugly');




SELECT d.name AS director_name, COUNT(f.id) AS num_films_directed
FROM directors d
LEFT JOIN films f ON d.directorId = f.directorId
GROUP BY d.name;






