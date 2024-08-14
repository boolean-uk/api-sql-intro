CREATE TABLE IF NOT EXISTS films (
    id SERIAL PRIMARY KEY,
    title TEXT,
    genre TEXT,
    release_year INTEGER,
    score INTEGER
);