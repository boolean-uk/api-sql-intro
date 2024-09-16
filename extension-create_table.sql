    -- Extension 2

CREATE TABLE IF NOT EXISTS directors (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE IF NOT EXISTS films (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL UNIQUE,
    genre TEXT,
    release_year INT,
    score INT,
    director_id INT FOREIGN KEY REFERENCES directors(id)
);

CREATE TABLE IF NOT EXISTS films (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL UNIQUE,
    genre TEXT,
    release_year INT,
    score INT,
    director_id INT NOT NULL,
    FOREIGN KEY (director_id) REFERENCES directors(id)
);

INSERT INTO directors (name)
VALUES
    ('Quentin Tarantino'),
    ('David Fincher'),
    ('Steven Spielberg'),
    ('Tim Burton')

INSERT INTO films (title, genre, release_year, score, director_id)
VALUES
    ('Kill Bill', 'Action', 2003, 8, 1),
    ('Fight Club', 'Thriller', 1999, 9, 2),
    ('Gone Girl', 'Thriller', 2014, 7, 2),
    ('E.T', 'SciFi', 1982, 8, 3),
    ('Jurassic Park', 'SciFi', 1993, 8, 3),
    ('Corpse Bride', 'Fantasy', 2005, 9, 4);