DROP TABLE IF EXISTS films;
CREATE TABLE IF NOT EXISTS films(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL UNIQUE,
    genre VARCHAR(255) NOT NULL,
    release_year INTEGER NOT NULL,
    score INTEGER NOT NULL,
    director_id INTEGER NOT NULL
);

DROP TABLE IF EXISTS directors;
CREATE TABLE IF NOT EXISTS directors(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);


INSERT INTO films
(title, genre, release_year, score, director_id)
VALUES 
('The Shawshank Redemption', 'Drama', 1994, 9, 2),
('The Godfather', 'Crime', 1972, 9, 3),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 1),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', 1999, 8, 4),
('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
('The Hunt for Red October', 'Thriller', 1990, 7, 2),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 3),
('Hell or High Water', 'Western', 2016, 8, 2),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven', 'Western', 1992, 7, 3);

INSERT INTO directors
(name)
VALUES
('Jonas'),
('John'),
('Nigel'),
('Arnold');