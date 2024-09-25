CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) UNIQUE,
  genre VARCHAR(50),
  release_year INTEGER,
  score INTEGER
);
