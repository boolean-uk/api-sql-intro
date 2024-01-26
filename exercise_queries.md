--CREATE TABLE films (
--id SERIAL PRIMARY KEY,
--title VARCHAR(30) UNIQUE NOT NULL,
--genre VARCHAR(20) NOT NULL,
--release_year INT NOT NULL,
--score INT NOT NULL
--)

--INSERT INTO films (title, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
--INSERT INTO films (title, genre, release_year, score) VALUES ('The Godfather', 'Crime', 1972, 9);
--INSERT INTO films (title, genre, release_year, score) VALUES ('The Dark Knight', 'Action', 2008, 9);
--INSERT INTO films (title, genre, release_year, score) VALUES ('Alien', 'SciFi', 1979, 9);
--INSERT INTO films (title, genre, release_year, score) VALUES ('Total Recall', 'SciFi', 1990, 8);
--INSERT INTO films (title, genre, release_year, score) VALUES ('The Matrix', 'SciFi', 1999, 8);
--INSERT INTO films (title, genre, release_year, score) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
--INSERT INTO films (title, genre, release_year, score) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
--INSERT INTO films (title, genre, release_year, score) VALUES ('The Hunt for Red October', 'Thriller', 1990, 79);
--INSERT INTO films (title, genre, release_year, score) VALUES ('Misery', 'Thriller', 1990, 7);
--INSERT INTO films (title, genre, release_year, score) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
--INSERT INTO films (title, genre, release_year, score) VALUES ('Hell or High Water', 'Western', 2016, 8);
--INSERT INTO films (title, genre, release_year, score) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
--INSERT INTO films (title, genre, release_year, score) VALUES ('Unforgiven', 'Western', 1992, 7);

--SELECT * FROM films LIMIT 14;
--UPDATE films SET score = 7 WHERE id = 9;
--SELECT * FROM films ORDER BY score DESC LIMIT 14;
--SELECT * FROM films ORDER BY release_year DESC LIMIT 14;
--SELECT * FROM films WHERE score >= 8;
--SELECT * FROM films WHERE score <= 7;
--SELECT * FROM films WHERE release_year = 1990;
--SELECT * FROM films WHERE release_year < 2000;
--SELECT * FROM films WHERE release_year > 1990;
--SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999;
--SELECT * FROM films WHERE genre = 'SciFi';
--SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';
--SELECT * FROM films WHERE genre != 'SciFi';
--SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
--SELECT * FROM films WHERE title LIKE '%Matrix%';

--EXTENSIONS 1
--SELECT CAST(AVG(score)::numeric(10,2) as FLOAT) as avg_score FROM films;
--SELECT COUNT(id) FROM films;
--SELECT genre, CAST(AVG(score)::numeric(10,2) as FLOAT) as avg_score FROM films GROUP BY genre;

--EXTENSIONS 2
--CREATE TABLE directors (
--id SERIAL PRIMARY KEY,
--name VARCHAR(30) NOT NULL
--);

--INSERT INTO directors (name) VALUES ('Elias Soprani');
--INSERT INTO directors (name) VALUES ('Peter Jackson');
--INSERT INTO directors (name) VALUES ('Tommy Wiseau');

--ALTER TABLE films ADD COLUMN director_id INTEGER;
--ALTER TABLE films ADD CONSTRAINT fk_films_directors FOREIGN KEY (director_id) REFERENCES directors(id);
--UPDATE films SET director_id = 1 WHERE director_id IS NULL;
--UPDATE films SET director_id = (id % 3) + 1;

--SELECT films.title, directors.name as director FROM films INNER JOIN directors ON films.director_id=directors.id;

--EXTENSIONS 3
--SELECT directors.id, directors.name, COUNT(films.id) AS film_count
--FROM directors
--JOIN films ON directors.id = films.director_id
--GROUP BY directors.id, directors.name;
