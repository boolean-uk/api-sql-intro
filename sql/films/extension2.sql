CREATE TABLE IF NOT EXISTS directors (
id SERIAL PRIMARY KEY, 
director_name VARCHAR(255) NOT NULL
);
SELECT title, director_name, release_year FROM films
INNER JOIN directors ON directors.id = films.directorId