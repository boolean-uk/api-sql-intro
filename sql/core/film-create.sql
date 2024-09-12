-- create
CREATE TABLE film (
  film_id SERIAL PRIMARY KEY,
  film_title VARCHAR(50) NOT NULL,
  film_genre VARCHAR(50) NOT NULL,
  film_release_year INT NOT NULL,
  film_score INT NOT NULL
);