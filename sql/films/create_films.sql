CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL UNIQUE,
  genre VARCHAR(255),
  release_year INT,
  check(release_year >= 1800 and release_year <= 2200),
  score INT,
  check(score BETWEEN 0 AND 10),
  director_id INT,
  check(director_id > 0)