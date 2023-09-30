CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    genre VARCHAR(255),
    release_year INTEGER,
    score INTEGER
);


INSERT INTO films (title, genre, release_year, score)
VALUES
    ('The Shawshank Redemption', 'Drama', 1994, 9),
    ('The Godfather', 'Crime', 1972, 9),
    ('The Dark Knight', 'Action', 2008, 9),
    ('Alien', 'SciFi', 1979, 9),
    ('Total Recall', 'SciFi', 1990, 8),
    ('The Matrix', 'SciFi', 1999, 8),
    ('The Matrix Resurrections', 'SciFi', 2021, 5),
    ('The Matrix Reloaded', 'SciFi', 2003, 6),
    ('The Hunt for Red October', 'Thriller', 1990, 7),
    ('Misery', 'Thriller', 1990, 7),
    ('The Power Of The Dog', 'Western', 2021, 6),
    ('Hell or High Water', 'Western', 2016, 8),
    ('The Good the Bad and the Ugly', 'Western', 1966, 9),
    ('Unforgiven', 'Western', 1992, 7);


-- All films
SELECT * FROM films;

-- All films ordered by rating descending
SELECT * FROM films ORDER BY score DESC;

-- All films ordered by release year ascending
SELECT * FROM films ORDER BY release_year ASC;

-- All films with a rating of 8 or higher
SELECT * FROM films WHERE score >= 8;

-- All films with a rating of 7 or lower
SELECT * FROM films WHERE score <= 7;

-- Films released in 1990
SELECT * FROM films WHERE release_year = 1990;

-- Films released before 2000
SELECT * FROM films WHERE release_year < 2000;

-- Films released after 1990
SELECT * FROM films WHERE release_year > 1990;

-- Films released between 1990 and 1999
SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999;

-- Films with the genre of "SciFi"
SELECT * FROM films WHERE genre = 'SciFi';

-- Films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre IN ('Western', 'SciFi');

-- Films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre <> 'SciFi';

-- Films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

-- Films that have the word "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%';



-- Extension #1

-- Average film rating
SELECT AVG(score) AS average_rating FROM films;

-- Total number of films
SELECT COUNT(*) AS total_films FROM films;

-- Average film rating by genre
SELECT genre, AVG(score) AS average_rating FROM films GROUP BY genre;



-- Extension #2

CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL
);


ALTER TABLE films
ADD COLUMN director_id INTEGER;


INSERT INTO directors (name)
VALUES
    ('Director 1'),
    ('Director 2'),
    ('Director 3');


UPDATE films
SET director_id = 1
WHERE title IN (
    'The Shawshank Redemption',
    'The Godfather',
    'The Dark Knight',
    'Alien',
    'Total Recall',
    'The Matrix',
    'The Matrix Resurrections',
    'The Matrix Reloaded',
    'The Hunt for Red October',
    'Misery',
    'The Power Of The Dog',
    'Hell or High Water',
    'The Good the Bad and the Ugly',
    'Unforgiven'
);


-- List of films with their directors 
SELECT films.title, directors.name AS director
FROM films
JOIN directors ON films.director_id = directors.director_id;



-- Extension 3 

-- List of directors along with the number of films they have directed
SELECT directors.name, COUNT(films.film_id) AS film_count
FROM directors
LEFT JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name;