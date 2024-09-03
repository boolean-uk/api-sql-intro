 -- CORE

CREATE TABLE IF NOT EXISTS Films (
    id SERIAL PRIMARY KEY,
    title VARCHAR(250) NOT NULL UNIQUE,
    genre VARCHAR(250) NOT NULL,
    release_year INTEGER NOT NULL,
    score INTEGER NOT NULL
);


INSERT INTO Films
(title, genre, release_year, score)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', '1999', 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', '2003', 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7)


-- All films
SELECT * FROM Films;

-- All films ordered by rating descending
SELECT * From Films ORDER BY score DESC;

-- All films ordered by release year ascending
SELECT * FROM Films ORDER BY release_year;

-- All films with a rating of 8 or higher
SELECT * FROM Films WHERE score >= 8

-- All films with a rating of 7 or lower
SELECT * FROM Films WHERE score <= 7;

-- films released in 1990
SELECT * FROM Films WHERE release_year = 1990;

-- films released before 2000
SELECT * FROM Films WHERE release_year <= 2000;

-- films released after 1990
SELECT * FROM Films WHERE release_year > 1990;

-- films released between 1990 and 1999
SELECT * FROM Films WHERE release_year BETWEEN 1990 AND 1999;

-- films with the genre of "SciFi"
SELECT * FROM Films WHERE genre = 'SciFi';

-- films with the genre of "Western" or "SciFi"
SELECT * FROM Films WHERE genre = 'Western' OR genre = 'SciFi';

-- films with any genre apart from "SciFi"
SELECT * FROM Films WHERE genre != 'SciFi';

-- films with the genre of "Western" released before 2000
SELECT * FROM Films WHERE genre = 'Western' AND release_year < 2000;

-- films that have the world "Matrix" in their title
SELECT * FROM Films WHERE title LIKE '%Matrix%';



--EXTENSION 1

-- Return the average film rating
SELECT AVG(score) as average_ration FROM Films;

-- Return the total number of films
SELECT COUNT(*) FROM Films;

-- Return the average film rating by genre
SELECT AVG(score) as average_score, genre FROM Films GROUP BY genre; 




-- EXTENSION 2

CREATE TABLE IF NOT EXISTS Directors (
	id SERIAL PRIMARY KEY,
	name VARCHAR (250) NOT NULL
);


CREATE TABLE IF NOT EXISTS Films_with_directors (
	id SERIAL PRIMARY KEY,
    title VARCHAR(250) NOT NULL UNIQUE,
    genre VARCHAR(250) NOT NULL,
    release_year INTEGER NOT NULL,
    score INTEGER NOT NULL,
    directorId SERIAL,
    FOREIGN KEY (directorId) REFERENCES Directors(id)
);


INSERT INTO Directors 
	(name) 
VALUES 
	('One Director'),
	('Another Director'),
	('A third Director')


INSERT INTO Films_with_directors
(title, genre, release_year, score, directorId)
VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 1),
('The Dark Knight', 'Action', 2008, 9, 2),
('Alien', 'SciFi', 1979, 9, 3),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', '1999', 8, 1),
('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
('The Matrix Reloaded', 'SciFi', '2003', 6, 3),
('The Hunt for Red October', 'Thriller', 1990, 7, 3),
('Misery', 'Thriller', 1990, 7, 2),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 1),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven', 'Western', 1992, 7, 3)


SELECT
	fd.Title, d.name
FROM 
	Films_with_directors fd
LEFT JOIN directors d ON fd.directorId = d.id
	



-- Extension 3

SELECT
	d.name, COUNT(fd.id) as nr_films
FROM 
	Films_with_directors fd
LEFT JOIN directors d ON fd.directorId = d.id
GROUP BY d.name
	




