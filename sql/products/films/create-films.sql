CREATE TABLE films(
    id SERIAL PRIMARY key,
    title VARCHAR(255) NOT NULL UNIQUE,
    genre VARCHAR(255) NOT NULL,
    release_year INT NOT NULL,
    score INT CHECK(score BETWEEN 0 and 10)
);