CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    genre VARCHAR(50) NOT NULL,
    release_year INTEGER NOT NULL,
    score INTEGER NOT NULL CHECK (score >= 0 AND score <= 10)
);
