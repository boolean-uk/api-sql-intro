-- Extension 1

-- Return the average film rating
SELECT AVG(score) FROM films;

-- Return the total number of films
SELECT COUNT(*) FROM films;

-- Return the average film rating by genre
SELECT genre, AVG(score) FROM films GROUP BY genre;


-- Extension 2

-- Create a new directors table
CREATE TABLE directors(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    UNIQUE (name)
);

-- Recreate your films table and add a directorId column
CREATE TABLE films (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT NOT NULL,
    release_year INT NOT NULL,
    score INT NOT NULL,
    directorId INT NOT NULL,
    UNIQUE (title)
);

-- Insert a few director records
INSERT INTO directors (name) VALUES
('Christopher Nolan'),
('Quentin Tarantino'),
('Steven Spielberg'),
('Martin Scorsese'),
('David Fincher');

-- Re-insert your film data, updating each film so it will have a directorId
INSERT INTO films
    (title, genre, release_year, score, directorId)
    VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 2),
    ('The Dark Knight', 'Action', 2008, 9, 1),
    ('Alien', 'SciFi', 1979, 9, 3),
    ('Total Recall', 'SciFi', 1990, 8, 3),
    ('The Matrix', 'SciFi', 1999, 8, 4),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
    ('The Hunt for Red October', 'Thriller', 1990, 7, 5),
    ('Misery', 'Thriller', 1990, 7, 5),
    ('The Power Of The Dog', 'Western', 2021, 6, 1),
    ('Hell or High Water', 'Western', 2016, 8, 2),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
    ('Unforgiven', 'Western', 1992, 7, 4);

-- Using an SQL JOIN, write a SELECT statement that returns a list of films with their director
SELECT films.title, directors.name
FROM films
JOIN directors
ON films.directorId = directors.id;


-- Extension 3

-- Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT directors.name, COUNT(films.id)
FROM directors
JOIN films
ON directors.id = films.directorId
GROUP BY directors.name;

