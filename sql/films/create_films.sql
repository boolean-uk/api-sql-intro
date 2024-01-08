CREATE TABLE films (
    id SERIAL PRIMARY KEY UNIQUE,
    title VARCHAR(255) UNIQUE NOT NULL,
    genre VARCHAR(255) NOT NULL, 
    year INT NOT NULL,
    score INT NOT NULL
)