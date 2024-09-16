-- Extension 1
-- Return the average film rating
SELECT AVG(score) AS average_rating FROM films;

-- Return the total number of films
SELECT COUNT(*) AS total_films FROM films;

-- Return the average film rating by genre
SELECT genre, AVG(score) AS average_rating FROM films GROUP BY genre;

-- Extension 2

CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);

CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE,
    genre VARCHAR(50),
    release_year INTEGER,
    score INTEGER,
    director_id INTEGER,
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

INSERT INTO directors (name) VALUES 
('Steven Spielberg'),
('Quentin Tarantino'),
('Christopher Nolan'),

UPDATE films SET director_id = 1 WHERE title = 'The Shawshank Redemption';
UPDATE films SET director_id = 2 WHERE title = 'The Godfather';


-- Extension 3

SELECT directors.name, COUNT(films.film_id) AS num_films_directed
FROM directors
JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name;