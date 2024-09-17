--Core
CREATE TABLE films(
	film_id Serial primary KEY,
	title VARCHAR(255),
	genre VARCHAR(255),
	release_year INTEGER,
	score INTEGER
);

--Extension 2
CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE films_new (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    release_year INTEGER,
    score INTEGER,
    director_id INTEGER REFERENCES directors(director_id));
    
    INSERT INTO films_new (title, genre, release_year, score, director_id)
    SELECT title, genre, release_year, score, NULL FROM films;
    
    DROP TABLE films;
    
    ALTER TABLE films_new RENAME to films;

--Core
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
('The Good the Bad and the Ugly','Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7);

--Extension 2
INSERT INTO directors (name) VALUES
('John Doe'),
('Jane Smith'),
('Bob Johnson');
--Core

SELECT * FROM films;
SELECT * FROM films ORDER BY score DESC;
SELECT * FROM films ORDER BY release_year ASC;
SELECT * FROM films WHERE score >= 8;
SELECT * FROM films WHERE score <= 7;
SELECT * FROM films WHERE release_year = 1990;
SELECT * FROM films WHERE release_year <= 2000;
SELECT * FROM films WHERE release_year >= 1990;
SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999;
SELECT * FROM films WHERE genre = 'SciFi';
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';
SELECT * FROM films WHERE genre != 'SciFi' ;
SELECT * FROM films WHERE genre = 'Western' AND release_year <= 2000;
SELECT * FROM films WHERE title LIKE '%Matrix%';

--Extension 1

SELECT AVG(score) AS "Average Rating" FROM films;
SELECT COUNT(*) AS "Total Number of Films" FROM films;
SELECT genre, ROUND(AVG(score), 2) AS "Average Rating" FROM films GROUP BY genre;

--Extension 2
SELECT films.title, directors.name AS director
FROM films
JOIN directors ON films.director_id = directors.director_id;

--Extension 3
SELECT directors.name, COUNT(films.director_id) AS "Number of Films Directed"
FROM directors
LEFT JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name;