SELECT AVG(score) AS average_rating FROM films;
SELECT COUNT(*) AS total_films FROM films;
SELECT genre, AVG(score) AS average_rating FROM films GROUP BY genre;


CREATE TABLE directors (
    directorId INT PRIMARY KEY,
    name TEXT
);


ALTER TABLE films
ADD COLUMN directorId INT;


INSERT INTO directors (directorId, name) VALUES
(1, 'Director 1'),
(2, 'Director 2'),
(3, 'Director 3');

