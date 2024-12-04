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

UPDATE films SET directorId = 1 WHERE title IN ('The Shawshank Redemption', 'The Godfather', 'The Dark Knight');
UPDATE films SET directorId = 2 WHERE title IN ('Alien', 'Total Recall', 'The Matrix');
UPDATE films SET directorId = 3 WHERE title IN ('The Matrix Resurrections', 'The Matrix Reloaded', 'The Hunt for Red October', 'Misery', 'The Power Of The Dog', 'Hell or High Water', 'The Good, the Bad and the Ugly', 'Unforgiven');

SELECT films.title, directors.name FROM films JOIN directors ON films.directorid = directors.directorid;