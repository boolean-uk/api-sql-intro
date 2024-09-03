-- Create directors table
CREATE TABLE directors (
 directorid SERIAL PRIMARY KEY,
 name VARCHAR(50) NOT NULL
);

-- Insert directors
INSERT INTO directors
(name)
VALUES
('Francis Ford Coppola'),
('Wachowski'),
('Frank Darabont'),
('Christopher Nolan'),
('James Cameron');

-- Recreate film table
CREATE TABLE films_with_directors (
 id SERIAL PRIMARY KEY,
 title VARCHAR(50) NOT NULL,
 UNIQUE (title),
 genre VARCHAR(50) NOT NULL,
 release INTEGER NOT NULL,
 score INTEGER NOT NULL CHECK (score > 0 AND score < 11),
 directorid SERIAL,
 FOREIGN KEY (directorid) REFERENCES directors(directorid)
);

-- Insert films with director
INSERT INTO films_with_directors
(title, genre, release, score, directorid)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 4),
('The Godfather', 'Crime', 1972, 9, 1),
('The Dark Knight', 'Action', 2008, 9, 5),
('Alien', 'SciFi', 1979, 9, 3),
('Total Recall', 'SciFi', 1990, 8, 4),
('The Matrix', 'SciFi', 1999, 8, 2),
('The Matrix Resurrections', 'SciFi', 2021, 5, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
('The Hunt for Red October', 'Thriller', 1990, 7, 1),
('Misery', 'Thriller', 1990, 7, 5),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 4),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
('Unforgiven', 'Western', 1992, 7, 1);

-- Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT films_with_directors.title, directors.name
FROM films_with_directors
INNER JOIN directors ON films_with_directors.directorid=directors.directorid;