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
        WHEN title = 'The Shawshank Redemption' THEN 1
        WHEN title = 'The Godfather' THEN 2
        WHEN title = 'The Dark Knight' THEN 1
        WHEN title = 'Alien' THEN 3
        WHEN title = 'Total Recall' THEN 3
        WHEN title = 'The Matrix' THEN 3
        WHEN title = 'The Matrix Resurrections' THEN 1
        WHEN title = 'The Matrix Reloaded' THEN 1
        WHEN title = 'The Hunt for Red October' THEN 2
        WHEN title = 'Misery' THEN 1
        WHEN title = 'The Power Of The Dog' THEN 3
        WHEN title = 'Hell or High Water' THEN 2
        WHEN title = 'The Good the Bad and the Ugly' THEN 1
        WHEN title = 'Unforgiven' THEN 3
    END;