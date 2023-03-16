CREATE TABLE films (
    id SERIAL PRIMARY KEY,
    title VARCHAR(32) NOT NULL,
    genre VARCHAR(32) NOT NULL,
    release_year INTEGER NOT NULL,
    score INTEGER DEFAULT 0,
    UNIQUE(title)
);