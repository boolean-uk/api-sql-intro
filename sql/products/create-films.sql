CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    genre VARCHAR(100),
    release_year INTEGER,
    score_out_of_10 INTEGER
);
