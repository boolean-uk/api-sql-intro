CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE,
    genre VARCHAR(100),
    release_year INTEGER,
    score INTEGER CHECK (score >= 0 AND score <= 10)
);