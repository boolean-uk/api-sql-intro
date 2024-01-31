-- Insert data

CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL,
  release_year INTEGER NOT NULL,
  rating INTEGER NOT NULL
);

INSERT INTO films (title, genre, release_year, rating) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Godfather', 'Crime', 1972, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Dark Knight', 'Action', 2008, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Alien', 'SciFi', 1979, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Total Recall', 'SciFi', 1990, 8);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Matrix', 'SciFi', 1999, 8);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Matrix Resurrections', 'SciFi', 2021, 5);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Matrix Reloaded', 'SciFi', 2003, 6);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Hunt for Red October', 'Thriller', 1990, 7);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Misery', 'Thriller', 1990, 7);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Power Of The Dog', 'Western', 2021, 6);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Hell or High Water', 'Western', 2016, 8);
INSERT INTO films (title, genre, release_year, rating) VALUES ('The Good the Bad and the Ugly', 'Western', 1966, 9);
INSERT INTO films (title, genre, release_year, rating) VALUES ('Unforgiven', 'Western', 1992, 7);

-- Select statements

SELECT * FROM films;
SELECT * FROM films ORDER BY rating DESC;
SELECT * FROM films ORDER BY release_year ASC;
SELECT * FROM films WHERE rating >= 8;
SELECT * FROM films WHERE rating <= 7;
SELECT * FROM films WHERE release_year = 1990;
SELECT * FROM films WHERE release_year < 2000;
SELECT * FROM films WHERE release_year > 1990;
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;
SELECT * FROM films WHERE genre = 'SciFi';
SELECT * FROM films WHERE genre IN ('Western', 'SciFi');
SELECT * FROM films WHERE genre != 'SciFi';
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
SELECT * FROM films WHERE title ILIKE '%matrix%';


-- Extension 1

SELECT AVG(rating) FROM films;
SELECT COUNT(*) FROM films;
SELECT genre, AVG(rating) FROM films GROUP BY genre;


-- Extension 2

CREATE TABLE directors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

ALTER TABLE films ADD COLUMN director_id INTEGER REFERENCES directors(id);

INSERT INTO directors (name) VALUES ('Quentin Tarantino');
INSERT INTO directors (name) VALUES ('Christopher Nolan');
INSERT INTO directors (name) VALUES ('David Fincher');
INSERT INTO directors (name) VALUES ('Frank Darabont');
INSERT INTO directors (name) VALUES ('Martin Scorsese');
INSERT INTO directors (name) VALUES ('Steven Spielberg');
INSERT INTO directors (name) VALUES ('Stanley Kubrick');
INSERT INTO directors (name) VALUES ('Ridley Scott');
INSERT INTO directors (name) VALUES ('David Mackenzie');
INSERT INTO directors (name) VALUES ('Jane Campion');

UPDATE films SET director_id = 4 WHERE title = 'The Shawshank Redemption';
UPDATE films SET director_id = 9 WHERE title = 'Hell or High Water';
UPDATE films SET director_id = 10 WHERE title = 'The Power Of The Dog';
UPDATE films SET director_id = 10 WHERE title = 'Alien';
UPDATE films SET director_id = 7 WHERE title = 'The Matrix';
UPDATE films SET director_id = 5 WHERE title = 'The Matrix Reloaded';
UPDATE films SET director_id = 3 WHERE title = 'The Matrix Resurrections';
UPDATE films SET director_id = 4 WHERE title = 'Total Recall';
UPDATE films SET director_id = 8 WHERE title = 'The Hunt for Red October';
UPDATE films SET director_id = 1 WHERE title = 'Misery';
UPDATE films SET director_id = 2 WHERE title = 'The Good the Bad and the Ugly';
UPDATE films SET director_id = 6 WHERE title = 'Unforgiven';


SELECT * FROM films JOIN directors ON films.director_id = directors.id;


-- Extension 3

SELECT directors.name, COUNT(films.id) FROM directors JOIN films ON directors.id = films.director_id GROUP BY directors.name;

