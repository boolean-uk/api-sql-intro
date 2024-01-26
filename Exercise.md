--CREATE TABLE films (
--id SERIAL PRIMARY KEY,
--title VARCHAR(30) UNIQUE NOT NULL,
--genre VARCHAR(20) NOT NULL,
--release_year INT NOT NULL,
--score INT CHECK (score >= 0 AND score <= 10)
--);

--INSERT INTO films(title, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9), ('The Godfather', ---'Crime', 1972, 9), --('The Dark Knight', 'Action', 2008, 9), ('Alien', 'SciFi', 1979, 9), ('Total Recall', 'SciFi', 1990, 8), 
--('The Matrix', 'SciFi', 1999, 8), ('The Matrix Resurrections', 'SciFi', 2021, 5), ('The Matrix Reloaded', 'SciFi', 2003, 6),
--('The Hunt for Red October', 'Thriller', 1990, 7), ('Misery', 'Thriller', 1990, 7), ('The Power Of The Dog', 'Western', 2021, ---6),
--('Hell or High Water', 'Western', 2016, 8), ('The Good the Bad and the Ugly', 'Western', 1966, 9), ('Unforgiven', 'Western', --1992, 7);

--SELECT * FROM films;
--SELECT * FROM films ORDER BY score DESC;
--SELECT * FROM films ORDER BY release_year ASC;
--SELECT * FROM films WHERE score >= 8;
--SELECT * FROM films WHERE score <= 7;
--SELECT * FROM films WHERE release_year=1990;
--SELECT * FROM films WHERE release_year < 1990;
--SELECT * FROM films WHERE release_year > 1990;
--SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999;
--SELECT * FROM films WHERE genre = 'SciFi';
--SELECT * FROM films WHERE genre = 'Western' OR genre='SciFi';
--SELECT * FROM films WHERE genre <> 'SciFi';
--SELECT * FROM films WHERE genre='Western' AND release_year < 2000;
--SELECT * FROM films WHERE title LIKE '% Matrix %';



--Extension 1

--SELECT AVG(score) AS average_score FROM films;
--SELECT COUNT(*) FROM films;
--SELECT genre, AVG(score) AS average_score FROM films GROUP BY genre;

--Extension 2

--CREATE TABLE directors (
--id SERIAL PRIMARY KEY,
--name VARCHAR(30) UNIQUE NOT NULL
--);

--INSERT INTO directors (name) VALUES ('Director 1'), ('Director 2'), ('Direcotr 3');
--SELECT * FROM directors;

--ALTER TABLE films ADD COLUMN directorID INT;
--SELECT * FROM films;

--UPDATE films SET directorid = 2 WHERE title LIKE 'The %';
--UPDATE films SET directorid = 1 WHERE title = 'Alien';
--UPDATE films SET directorid = 1 WHERE title = 'Total Recall';
--UPDATE films SET directorid = 1 WHERE title = 'Misery';
--UPDATE films SET directorid = 3 WHERE title LIKE 'Hell %';
--UPDATE films SET directorid = 3 WHERE title = 'Unforgiven';

--SELECT films.title, directors.name AS director FROM films JOIN directors ON films.directorid = directors.id;



--Extension 3
--SELECT directors.name AS director_name, COUNT(films.id) AS num_films_directed FROM directors 
--LEFT JOIN films ON directors.id = films.directorid GROUP BY directors.id, directors.name;
