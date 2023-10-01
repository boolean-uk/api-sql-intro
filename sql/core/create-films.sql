CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title TEXT UNIQUE NOT NULL,
    genre TEXT,
    release_year INTEGER,
    score_out_of_10 INTEGER
);