CREATE TABLE directors (
id serial primary key, 
full_name varchar(255) UNIQUE
);

CREATE TABLE films (
id serial primary key, 
title varchar(255) UNIQUE,
genre varchar(50), 
release_year integer,
score integer CHECK (score >= 1 AND score <= 10),
directorID integer REFERENCES directors(id)
);

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
('Unforgiven', 'Western', 1992, 7);

INSERT INTO directors (full_name) VALUES
('Director 1'),
('Director 2'),
('Director 3');

UPDATE films SET directorId = 1 WHERE title = 'The Shawshank Redemption';
UPDATE films SET directorId = 2 WHERE title = 'The Godfather';
UPDATE films SET directorId = 3 WHERE title = 'The Dark Knight';

SELECT films.title, films.genre, films.release_year, films.score, directors.full_name AS director
FROM films JOIN directors ON films.directorId = directors.id;

SELECT directors.full_name AS director, COUNT(films.id) AS number_of_films
FROM directors
LEFT JOIN films ON directors.id = films.directorId
GROUP BY directors.id, directors.full_name
ORDER BY number_of_films DESC;
