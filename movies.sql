-- All films
SELECT * FROM movies;

-- All films ordered by rating descending
SELECT * FROM movies
ORDER BY score DESC;

-- All films ordered by release year ascending
SELECT * FROM movies
ORDER BY release_year ASC;

-- All films with a rating of 8 or higher
SELECT * FROM movies
WHERE score >= 8;

-- All films with a rating of 7 or lower
SELECT * FROM movies
WHERE score <= 7;

-- films released in 1990
SELECT * FROM movies
WHERE release_year = 1990;

-- films released before 2000
SELECT * FROM movies
WHERE release_year < 2000;

-- films released after 1990
SELECT * FROM movies
WHERE release_year > 1990;

-- films released between 1990 and 1999
SELECT * FROM movies
WHERE release_year
BETWEEN 1990 AND 1999;

-- films with the genre of "SciFi"
SELECT * FROM movies
WHERE genre = 'SciFi';

-- films with the genre of "Western" or "SciFi"
SELECT * FROM movies
WHERE genre IN ('SciFi', 'Western');

-- films with any genre *apart* from "SciFi"
SELECT * FROM movies
WHERE genre NOT LIKE 'SciFi';

-- films with the genre of "Western" released before 2000
SELECT * FROM movies
WHERE genre = 'Western' AND release_year < 2000;

-- films that have the world "Matrix" in their title
SELECT * FROM movies
WHERE title LIKE '%Matrix%';
