CREATE TABLE Films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE,
    genre VARCHAR(50),
    release_year INTEGER,
    score_out_of_10 INTEGER
);
