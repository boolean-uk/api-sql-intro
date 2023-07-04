CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) UNIQUE,
  genre VARCHAR(255),
  release_year INTEGER,
  score INTEGER
);