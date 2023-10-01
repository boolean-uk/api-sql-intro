CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

INSERT INTO directors (name) VALUES
    ('Frank Darabont'),
    ('Francis Ford Coppola'),
    ('Christopher Nolan'),
    ('Ridley Scott');

CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title TEXT UNIQUE NOT NULL,
    genre TEXT,
    release_year INTEGER,
    score_out_of_10 INTEGER,
    director_id INTEGER REFERENCES directors(director_id)
);

INSERT INTO films (title, genre, release_year, score_out_of_10, director_id)
VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 2),
    ('The Dark Knight', 'Action', 2008, 9, 3),
    ('Alien', 'SciFi', 1979, 9, 4),
    ('Total Recall', 'SciFi', 1990, 8, 4),
    ('The Matrix', 'SciFi', 1999, 8, 3),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 3),
    ('The Hunt for Red October', 'Thriller', 1990, 7, 2),
    ('Misery', 'Thriller', 1990, 7, 1),
    ('The Power Of The Dog', 'Western', 2021, 6, 4),
    ('Hell or High Water', 'Western', 2016, 8, 4),
    ('The Good, the Bad and the Ugly', 'Western', 1966, 9, 4),
    ('Unforgiven', 'Western', 1992, 7, 4);

-- Using a SQL JOIN, write a SELECT statement that returns a list of films with their director
SELECT films.title AS film_title, directors.name AS director_name
FROM films
INNER JOIN directors ON films.director_id = directors.director_id;