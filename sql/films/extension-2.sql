DROP TABLE IF EXISTS directors CASCADE;

CREATE TABLE directors
(
    id serial PRIMARY KEY,
    name VARCHAR(255)
);

DROP TABLE IF EXISTS films;

CREATE TABLE films (
    id serial PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre VARCHAR(255),
    release_year INT,
    score INT,
  	director_id INT,
    FOREIGN KEY (director_id) REFERENCES directors(id)
    ON DELETE SET NULL,
    UNIQUE(title)
);

INSERT INTO directors (name) VALUES
('Dir1'),
('Dir2'),
('Dir3'),
('Dir4'),
('Dir5'),
('Dir6');


INSERT INTO films (title, genre, release_year, score, director_id) VALUES 
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 3),
('The Dark Knight', 'Action', 2008, 9, 5),
('Alien', 'SciFi', 1979, 9, 2),
('Total Recall', 'SciFi', 1990, 8, 4),
('The Matrix', 'SciFi', 1999, 8, 6),
('The Matrix Resurrections', 'SciFi', 2021, 5, 3),
('The Matrix Reloaded', 'SciFi', 2003, 6, 1),
('The Hunt for Red October', 'Thriller', 1990, 7, 5),
('Misery', 'Thriller', 1990, 7, 2),
('The Power Of The Dog', 'Western', 2021, 6, 6),
('Hell or High Water', 'Western', 2016, 8, 4),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven', 'Western', 1992, 7, 3);

SELECT films.title, directors.name 
FROM films
JOIN directors ON directors.id = films.director_id; 