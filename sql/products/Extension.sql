SELECT AVG(score) AS average_rating FROM films;
SELECT COUNT(*) AS total_films FROM films;
SELECT genre, AVG(score) AS average_rating FROM films GROUP BY genre;


CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name TEXT UNIQUE
);

DROP TABLE films;

CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title TEXT UNIQUE,
    genre TEXT,
    release_year INTEGER,
    score INTEGER,
    director_id INTEGER,
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

INSERT INTO directors (name) VALUES
('Director 1'),
('Director 2'),
('Director 3');

INSERT INTO films (title, genre, release_year, score, director_id) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 1),
('The Dark Knight', 'Action', 2008, 9, 2),
('Alien', 'SciFi', 1979, 9, 2),
('Total Recall', 'SciFi', 1990, 8, 3),
('The Matrix', 'SciFi', 1999, 8, 3),
('The Matrix Resurrections', 'SciFi', 2021, 5,3),
('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
('The Hunt for Red October', 'Thriller', 1990, 7, 2),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 2),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
('Unforgiven', 'Western', 1992, 7, 1);



SELECT f.title, f.genre, f.release_year, f.score, d.name AS director_name
FROM films f
JOIN directors d ON f.director_id = d.director_id;

SELECT d.name AS director_name, COUNT(f.film_id) AS number_of_films
FROM directors d
LEFT JOIN films f ON d.director_id = f.director_id
GROUP BY d.name;
