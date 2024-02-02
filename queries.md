--All films:
SELECT * FROM films;

--All films ordered by rating descending:
SELECT * FROM films ORDER BY score DESC;

--All films ordered by release year ascending:
SELECT * FROM films ORDER BY release_year ASC;

--All films with a rating of 8 or higher:
SELECT * FROM films WHERE score >= 8;

--All films with a rating of 7 or lower:
SELECT * FROM films WHERE score <= 7;

--Films released in 1990:
SELECT * FROM films WHERE release_year = 1990;

--Films released before 2000:
SELECT * FROM films WHERE release_year < 2000;

--Films released after 1990:
SELECT * FROM films WHERE release_year > 1990;

--Films released between 1990 and 1999:
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;

--Films with the genre of “SciFi”:
SELECT * FROM films WHERE genre = 'SciFi';

--Films with the genre of “Western” or “SciFi”:
SELECT * FROM films WHERE genre IN ('Western', 'SciFi');

--Films with any genre apart from “SciFi”:
SELECT * FROM films WHERE genre <> 'SciFi';

--Films with the genre of “Western” released before 2000:
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

--Films that have the word “Matrix” in their title:
SELECT * FROM films WHERE title LIKE '%Matrix%';




Extension 1

--Return the average film rating:
SELECT AVG(score) FROM films;

--Return the total number of films:
SELECT COUNT(*) FROM films;

--Return the average film rating by genre:
SELECT genre, AVG(score) FROM films GROUP BY genre;

Extension 2

--Create a new directors table:

CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);

--Recreate your films table and add a directorId column:

DROP TABLE IF EXISTS films;

CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE,
    genre VARCHAR(255),
    release_year INTEGER,
    score INTEGER,
    director_id INTEGER REFERENCES directors(director_id)
);

--Insert a few director records

INSERT INTO directors (name) VALUES ('Director 1'), ('Director 2'), ('Director 3');


--Re-insert your film data, updating each film with have a directorId:

INSERT INTO films (title, genre, release_year, score, director_id) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
...
('Unforgiven', 'Western', 1992, 7, 3);

--Using a SQL JOIN, write a SELECT statement that returns a list of films with their director:

SELECT films.title, directors.name AS director FROM films JOIN directors ON films.director_id = directors.director_id;

Extension 3

--Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed:

SELECT directors.name, COUNT(films.film_id) AS number_of_films FROM directors JOIN films ON directors.director_id = films.director_id GROUP BY directors.name;