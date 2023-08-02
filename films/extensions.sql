-- EXTENSION 1

-- Average rating
SELECT ROUND(AVG(score)) FROM films 

-- Total number of films
SELECT COUNT(id) FROM films

-- Average rating by genre
SELECT ROUND(AVG(score)), genre FROM films
GROUP BY genre


-- EXTENSION 2

-- Create a new `directors` table.
CREATE TABLE directors(
id SERIAL PRIMARY KEY,
director_name VARCHAR(255) NOT NULL
)

-- Recreate your films table and add a `directorId` column.
CREATE TABLE updatedfilms(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  genre VARCHAR(255) NOT NULL,
  release_year INT,
  score INT,
  directorId INT
)

-- Insert a few director records
INSERT INTO directors(director_name)
VALUES
('Isabelle Tartarelli'),
('J.R.R. Tolkien'),
('Stephen King')

-- Re-insert your film data, with a `directorId`.
INSERT INTO updatedfilms(title, genre, release_year, score, directorid)
values 
( 'The Shawshank Redemption', 'Drama', 1994, 9, 1),
( 'The Godfather', 'Crime', 1972, 9, 2),
( 'The Dark Knight', 'Action', 2008, 9, 2),
( 'Alien', 'SciFi', 1979, 9, 2),
( 'Total Recall', 'SciFi', 1990, 8, 3),
( 'The Matrix', 'SciFi', 1999, 8, 1),
( 'The Matrix Resurrections', 'SciFi', 2021, 5, 1),
( 'The Matrix Reloaded', 'SciFi', 2003, 6, 1),
( 'The Hunt for Red October', 'Thriller', 1990, 7, 2),
( 'Misery', 'Thriller', 1990, 7, 3),
( 'The Power Of The Dog', 'Western', 2021, 6, 3),
( 'Hell or High Water', 'Western', 2016, 8, 2),
( 'The Good the Bad and the Ugly', 'Western', 1966, 9, 2),
( 'Unforgiven', 'Western', 1992, 7, 2);

-- Write a SELECT statement that returns a list of films with their director.
SELECT title, director_name
FROM updatedfilms
INNER JOIN directors
ON updatedfilms.directorid = directors.id


-- EXTENSION 3

