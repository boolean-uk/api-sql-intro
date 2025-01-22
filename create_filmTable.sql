CREATE TABLE films (
    film_id SERIAL PRIMARY KEY, 
    title VARCHAR(255) UNIQUE,
    genre VARCHAR(50),
    release_year INTEGER,
    score INTEGER
);

