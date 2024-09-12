--CREATE TABLE films(
 --id SERIAL PRIMARY KEY,
 --title VARCHAR(255) UNIQUE NOT NULL,
 --genre VARCHAR(20) NOT NULL,
 --release_year INT NOT NULL,
 --score INT NOT NULL
--);

--INSERT INTO films (title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);

--SELECT * FROM films;
--SELECT * FROM films WHERE score > 7

--SELECT AVG(score) FROM films;
--SELECT COUNT(title) FROM films;
--SELECT AVG(score), genre FROM films GROUP BY genre;

--CREATE TABLE director(
 --d_id SERIAL PRIMARY KEY,
 --name VARCHAR(255) UNIQUE NOT NULL
--);

--CREATE TABLE films(
 --id SERIAL PRIMARY KEY,
 --title VARCHAR(255) UNIQUE NOT NULL,
 --genre VARCHAR(20) NOT NULL,
 --release_year INT NOT NULL,
 --score INT NOT NULL,
 --director_id INT REFERENCES director(id) ON DELETE CASCADE
--);

--INSERT INTO director(name) VALUES ('Sarah');
--SELECT * FROM director;

--INSERT INTO films (title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
--INSERT INTO films(title, genre, release_year, score, director_id) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9, 1);
--INSERT INTO films(title, genre, release_year, score, director_id) VALUES ('The Matrix', 'SciFi', 1994, 9, 2);
--SELECT * FROM films;

--SELECT name, title FROM director INNER JOIN films ON d_id = director_id;--
--SELECT COUNT(score), genre FROM films GROUP BY genre;

SELECT director.name, COUNT(films.title)
FROM films
LEFT JOIN director ON films.director_id = director.d_id
GROUP BY name; 