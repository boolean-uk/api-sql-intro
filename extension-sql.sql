--Create Directors Table

CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name Text UNIQUE
);

--Give data to directors table

INSERT INTO directors (name) VALUES
('Director 1'),
('Director 2'),
('Director 3'),
('Director 4');

--Clear old table

DROP TABLE IF EXISTS films;


--Recreate films
CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title Text UNIQUE,
    genre Text,
    release_year INTEGER,
    score_out_of_10 INTEGER,
    director_id INTEGER,
    CONSTRAINT fk_director
        FOREIGN KEY (director_id)
        REFERENCES directors (director_id)
);

--Fill movie tables with new director ids

INSERT INTO
    films (title, genre, release_year, score_out_of_10, director_id)
VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9, 1),
    ('The Godfather', 'Crime', 1972, 9, 2),
    ('The Dark Knight', 'Action', 2008, 9, 3),
    ('Alien', 'SciFi', 1979, 9, 4),
    ('Total Recall', 'SciFi', 1990, 8, 4),
    ('The Matrix', 'SciFi', 1999, 8, 4),
    ('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
    ('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
    ('The Hunt for Red October', 'Thriller', 1990, 7, 2),
    ('Misery', 'Thriller', 1990, 7, 3),
    ('The Power Of The Dog', 'Western', 2021, 6, 2),
    ('Hell or High Water', 'Western', 2016, 8, 4),
    ('The Good, the Bad and the Ugly','Western',1966, 9, 4),
('Unforgiven', 'Western', 1992, 7, 1);

--Query to get movie with director

SELECT title, name FROM films
JOIN directors on films.director_id = directors.director_id;

--Extension 3 

SELECT directors.name , COUNT(films.director_id) as films
FROM directors
LEFT JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name;