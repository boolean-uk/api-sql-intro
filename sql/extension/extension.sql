-- Extension 1
-- Write SQL SELECT statements to

-- Return the average film rating
SELECT AVG(score) FROM films;

-- Return the total number of films
SELECT COUNT(title) FROM films;

-- Return the average film rating by genre
SELECT AVG(score), genre FROM films GROUP BY genre;

-- Extension 2
-- Create directors table
CREATE TABLE directors (
    id serial primary key,
    name text not null
);

-- Recreate films table, add directorId column
CREATE TABLE films (
    id serial primary key,
    title text not null,
    genre text not null,
    release_year int not null,
    score int not null,
    directorId int references directors(id),
    unique(title)
);

-- Insert a few directors
INSERT INTO directors 
    (name)
VALUES
    ('Max Olofsson'),
    ('Sven Larsson'),
    ('Dir Directorson'),
    ('Test testsson'),
    ('Best Directorsson');

-- Re-insert your films data
INSERT INTO films 
    (title, genre, release_year, score, directorId)
VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 1),
    ('The Dark Knight', 'Action', 2008, 9, 2),
    ('Alien', 'SciFi', 1979, 9, 2),
    ('Total Recall', 'SciFi', 1990, 8, 2),
    ('The Matrix', 'SciFi', 1999, 8, 3),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
    ('The Hunt for Red October', 'Thriller', 1990, 7, 2),
    ('Misery', 'Thriller', 1990, 7, 1),
    ('The Power Of The Dog', 'Western', 2021, 6, 3),
    ('Hell or High Water', 'Western', 2016, 8, 3),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
    ('Unforgiven', 'Western', 1992, 7, 4);

-- Using an SQL JOIN
SELECT title, directors.name FROM films JOIN directors ON films.directorId = directors.id;

-- Extension 3
-- Get list of directors with the number of films they have directed.
SELECT directors.name AS Director, COUNT(films.directorId) AS NumberOfMovies FROM films JOIN directors ON directors.id = films.directorId GROUP BY directors.name;
