-- Create table directors
CREATE TABLE directors (
    directorId SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

--Fill table with data
INSERT INTO films (title, genre, release_year, score, directorId) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 1),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', 1999, 8, 3),
('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
('The Hunt for Red October', 'Thriller', 1990, 7, 3),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 3),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven', 'Western', 1992, 7, 2);


-- 1. Return the average film rating
SELECT AVG(score) AS average_rating FROM films;

-- 2. Return the total number of films
SELECT COUNT(*) AS total_films FROM films;

-- 3. Return the average film rating by genre
SELECT genre, AVG(score) AS average_rating
FROM films
GROUP BY genre;

-- 4. Return all films including the director
SELECT films.title, films.genre, films.release_year, films.score, directors.name AS director
FROM films
JOIN directors ON films.directorId = directors.directorId;

-- 5. Return all directors and number of films
SELECT directors.name AS director_name, COUNT(films.directorId) AS num_films_directed
FROM directors
LEFT JOIN films ON directors.directorId = films.directorId
GROUP BY directors.directorId, directors.name
ORDER BY num_films_directed DESC;
