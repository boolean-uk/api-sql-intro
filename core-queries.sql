-- All films

SELECT * FROM films;

-- All films ordered by rating descending

SELECT * FROM films
ORDER BY score DESC;

-- All films ordered by release year ascending

SELECT * FROM films
ORDER BY release_year ASC;

-- All films with a rating of 8 or higher
SELECT * FROM films
WHERE score >= 8;

-- All films with a rating of 7 or lower
SELECT * FROM films
WHERE score <= 7;

-- All films released in 1990
SELECT * FROM films
WHERE release_year = 1990;

-- All films released before 2000
SELECT * FROM films
WHERE release_year < 2000;

-- All films released after 1990
SELECT * FROM films
WHERE release_year > 1990;

-- All films released between 1990 and 1999
SELECT * FROM films
WHERE release_year BETWEEN 1990 AND 1999;

-- All films with the genre of "SciFi"
SELECT * FROM films
WHERE genre = 'SciFi';

-- All films with the genre of "Western" or "SciFi"
SELECT * FROM films
WHERE genre = 'Western'
    OR genre = 'SciFi';

-- All films with any genre apart from "SciFi"
SELECT * FROM films
WHERE NOT (genre = 'SciFi');

-- All films with the genre of "Western" released before 2000
SELECT * FROM films
WHERE genre = 'Western'
    AND release_year < 2000;

-- All films that have the world "Matrix" in their title
SELECT * FROM films
WHERE title LIKE '%Matrix%';