DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS director;

CREATE TABLE director(
  director_id SERIAL PRIMARY KEY,
  director_first_name VARCHAR(25) NOT NULL,
  director_last_name VARCHAR(25) NOT NULL
);

CREATE TABLE film (
  film_id SERIAL PRIMARY KEY,
  film_title VARCHAR(50) NOT NULL,
  film_genre VARCHAR(50) NOT NULL,
  film_release_year INT NOT NULL,
  film_score INT NOT NULL,
  film_fk_director INT NOT NUll,
  CONSTRAINT fk_director FOREIGN KEY (film_fk_director) REFERENCES director(director_id)
);

INSERT INTO director VALUES
(DEFAULT, 'Ridley', 'Scott'),
(DEFAULT, 'Sergio', 'Leone'),
(DEFAULT, 'The', 'Wachowskis'),
(DEFAULT, 'Francis', 'Coppula'),
(DEFAULT, 'Christopher', 'Nolan'),
(DEFAULT, 'Ola', 'Nordmann'),
(DEFAULT, 'Kari', 'Nordmann');

INSERT INTO film VALUES 
(DEFAULT, 'The Shawshank Redemption', 'Drama', 1994, 9, 6),
(DEFAULT, 'The Godfather', 'Crime', 1972, 9, 4),
(DEFAULT, 'The Dark Knight', 'Action', 2008, 9, 5),
(DEFAULT, 'Alien', 'SciFi', 1979, 9, 1),
(DEFAULT, 'Total Recall', 'SciFi', 1990, 8, 7),
(DEFAULT, 'The Matrix', 'SciFi', 1999, 9, 3),
(DEFAULT, 'The Matrix Reloaded', 'SciFi', 2003, 6, 3),
(DEFAULT, 'The Matrix Revolutions', 'SciFi', 2004, 6, 3), -- I replaced Resurrections because I refuse to acknowledge that movie
(DEFAULT, 'The Hunt for Red October', 'Thriller', 1990, 7, 6),
(DEFAULT, 'Misery', 'Thriller', 1990, 7, 7),
(DEFAULT, 'The Power of the Dog', 'Western', 2021, 6, 7),
(DEFAULT, 'Hell or High Water', 'Western', 2016, 8, 6),
(DEFAULT, 'The Good the Bad and the Ugly', 'Western', 1966, 10, 2), --I gave it 10 as it should have
(DEFAULT, 'Unforgiven', 'Western', 1992, 7, 7);

--Create a new directors table. Each director should have a name and a unique director id. Recreate your films table and add a directorId column. Insert a few director records (the data does not need to be real, you can just make directors up). Re-insert your film data, updating each film with have a directorId. Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT film_title AS "Film title", director_first_name || ' ' || director_last_name AS "Director name" 
FROM film 
INNER JOIN director ON film_fk_director = director_id;