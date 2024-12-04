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
('The Good, the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7);

CREATE TABLE IF NOT EXISTS directors (
    directorId INT PRIMARY KEY,
    name TEXT NOT NULL
);

ALTER TABLE films
ADD COLUMN directorId INT;

INSERT INTO directors (directorId, name) VALUES
(1, 'Director 1'),
(2, 'Director 2'),
(3, 'Director 3');

SELECT directors.name, COUNT(films.directorId) AS movies
FROM directors
LEFT JOIN films ON directors.directorId = films.directorId
GROUP BY directors.directorId, directors.name;