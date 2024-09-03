Create a new directors table. Each director should have a name and a unique director id.
Recreate your films table and add a directorId column. Insert a few director records (the data
 does not need to be real, you can just make directors up).
Re-insert your film data, updating each film ao it will have a directorId.
Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.

DROP TABLE IF EXISTS directors;

CREATE TABLE IF NOT EXISTS directors(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    born INTEGER
);

INSERT INTO directors
(name, born)
VALUES
('Super Man', 1958),
('Iron Man', 1955),
('Spider Man', 1970),
('Bat Man', 1980);


-- fresh start for films
DROP TABLE IF EXISTS films;

CREATE TABLE IF NOT EXISTS films(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT NOT NULL,
    year INTEGER,
    score INTEGER,
    director INTEGER,
    UNIQUE(title)
);

INSERT INTO films
(title, genre, year, score, director)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 3),
('The Godfather', 'Crime', 1972, 9, 1),
('The Dark Knight', 'Action', 2008, 9, 2),
('Alien', 'SciFi', 1979, 9, 4),
('Total Recall', 'SciFi', 1990, 8, 3),
('The Matrix', 'SciFi', 1999, 8, 2),
('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
('The Hunt for Red October', 'Thriller', 1990, 7, 1),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 4),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 4),
('Unforgiven', 'Western', 1992, 7, 1);

-- Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.
select name, title from directors
    JOIN films
ON directors.id = films.director
ORDER BY name;

-- Bat Man      Alien
-- Bat Man      Hell or High Water
-- Bat Man      The Good the Bad and the Ugly
-- Iron Man     The Dark Knight
-- Iron Man     The Power Of The Dog
-- Iron Man     The Matrix
-- Spider Man   The Shawshank Redemption
-- Spider Man   Total Recall
-- Spider Man   The Matrix Resurrections
-- Spider Man   The Matrix Reloaded
-- Super Man    Misery
-- Super Man    The Hunt for Red October
-- Super Man    The Godfather
-- Super Man    Unforgiven