CREATE TABLE films(
	id SERIAL PRIMARY KEY,
  title VARCHAR(50) NOT NULL UNIQUE,
  genre VARCHAR(50) NOT NULL,
  release_year INT NOT NULL,
  score INTEGER CHECK(score >= 0 AND score <= 10) NOT NULL
);