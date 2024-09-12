CREATE TABLE films_with_directors (
    id SERIAL PRIMARY KEY UNIQUE,
    title VARCHAR(255) NOT NULL UNIQUE,
    genre VARCHAR(255) NOT NULL,
    year INT NOT NULL, 
    score INT NOT NULL, 
    director_id INT NOT NULL
)