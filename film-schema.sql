CREATE TABLE IF NOT EXISTS film (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT,
    release_year INT4,
    score INT2
);

INSERT INTO film (title, genre, release_year, score) VALUES 
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
    ('The Good the Bad and the Ugly', 'Western', 1966, 9),
    ('Unforgiven', 'Western', 1992, 7);


-- From EXTENSION 2
ALTER TABLE film
    ADD COLUMN director_id INT4 REFERENCES director(id);

UPDATE film
    SET director_id = CASE
        WHEN id = 1 THEN 2
        WHEN id = 2 THEN 3
        WHEN id = 3 THEN 1
        WHEN id = 4 THEN 4
        WHEN id = 5 THEN 5
        WHEN id = 6 THEN 6
        WHEN id = 7 THEN 6
        WHEN id = 8 THEN 6
        WHEN id = 9 THEN 7
        WHEN id = 10 THEN 8
        WHEN id = 11 THEN 9
        WHEN id = 12 THEN 10
        WHEN id = 13 THEN 11
        WHEN id = 14 THEN 12
    END;