CREATE TABLE IF NOT EXISTS films (
    id SERIAL PRIMARY KEY,
    title TEXT UNIQUE,
    genre TEXT,
    release_year INT,
    score INT,
    directorId SERIAL,
    FOREIGN KEY (directorId) REFERENCES directors(id)
);