CREATE TABLE films (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) UNIQUE NOT NULL,
  genre VARCHAR(20) NOT NULL, 
  release_year INT NOT NULL,
  score INT NOT NULL
);

INSERT INTO films (title, genre, release_year, score) VALUES ('The Shawshank Redemption', 'Drama', 1994, 9),
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
('Unforgiven', 'Western', 1992, 7)


# Standard Criteria
- All films

SELECT * FROM films

- All films ordered by rating descending

SELECT * FROM films 
ORDER BY score 	DESC

- All films ordered by release year ascending

SELECT * FROM films
ORDER BY release_year ASC

- All films with a rating of 8 or higher

SELECT * FROM films
WHERE score >= 8

- All films with a rating of 7 or lower

SELECT * FROM films
WHERE score <= 7

- films released in 1990

SELECT * FROM films
WHERE release_year = 1900

- films released before 2000

SELECT * FROM films
WHERE release_year < 2000

- films released after 1990

SELECT * FROM films
WHERE release_year > 1990

- films released between 1990 and 1999

SELECT * FROM films
WHERE release_year > 1990 AND release_year < 1999

- films with the genre of "SciFi"

SELECT * FROM films
WHERE genre = 'SciFi'

- films with the genre of "Western" or "SciFi"

SELECT * FROM films
WHERE genre = 'SciFi' OR genre = 'Western'

- films with any genre *apart* from "SciFi"

SELECT * FROM films
WHERE genre NOT LIKE 'SciFi'

- films with the genre of "Western" released before 2000

SELECT * FROM films
WHERE genre = 'Western' 
AND release_year < 2000

- films that have the world "Matrix" in their title

SELECT * FROM films
WHERE title LIKE '%Matrix%'


# Extension 1
- Return the average film rating

SELECT AVG(score)
FROM films

- Return the total number of films

SELECT COUNT(title)
FROM films

- Return the average film rating by genre

SELECT genre, AVG(score) AS avg_rating
FROM films 
GROUP BY genre;

# Extension 2
CREATE TABLE directors (
  director_id SERIAL PRIMARY KEY,
	name VARCHAR(20) UNIQUE NOT NULL
);

INSERT INTO directors (name) VALUES
('Christopher Nolan'),
('Quentin Tarantino'),
('Ridley Scott'),
('David Fincher');

ALTER TABLE films
ADD COLUMN director_id INT;

UPDATE films
SET director_id = 1
WHERE title = 'The Shawshank Redemption';

UPDATE films
SET director_id = 3
WHERE title = 'The Godfather';

UPDATE films
SET director_id = 2
WHERE title = 'The Dark Knight';

UPDATE films
SET director_id = 1
WHERE title = 'Alien';

UPDATE films
SET director_id = 1
WHERE title = 'Total Recall';

UPDATE films
SET director_id = 2
WHERE title 
LIKE '%Matrix%';

UPDATE films
SET director_id = 4
WHERE title = 'The Hunt for Red October';

UPDATE films
SET director_id = 4
WHERE title = 'Misery';

UPDATE films
SET director_id = 3
WHERE title = 'The Power Of The Dog';

UPDATE films
SET director_id = 3
WHERE title = 'Hell or High Water';

UPDATE films
SET director_id = 4
WHERE title = 'The Good the Bad and the Ugly';

UPDATE films
SET director_id = 1
WHERE title = 'Unforgiven';

SELECT films.title, directors.name AS director
FROM films
JOIN directors ON films.director_id = directors.director_id;

# Extension 3

SELECT directors.name AS directors,
COUNT(films.id) AS number_of_films FROM directors
LEFT JOIN films ON directors.director_id = films.director_id
GROUP BY directors.name;

