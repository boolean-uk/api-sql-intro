CREATE TABLE films(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) UNIQUE NOT NULL,
  genre VARCHAR(50) NOT NULL,
  release_year INT NOT NULL,
  score INT NOT NULL,
  directorId INT,
  CONSTRAINT fk_director FOREIGN KEY (directorId) REFERENCES directors(id) ON DELETE SET NULL
  );