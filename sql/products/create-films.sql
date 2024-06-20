create table films (
    id serial PRIMARY KEY,
    title TEXT UNIQUE NOT NULL,
    genre TEXT,
    release_year INTEGER,
    score INTEGER
);