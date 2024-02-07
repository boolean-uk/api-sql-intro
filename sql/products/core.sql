-- Core SQL Queries

-- All films
SELECT * FROM films;

-- All films ordered by rating descending
SELECT * FROM films ORDER BY score DESC;

-- All films ordered by release year ascending
SELECT * FROM films ORDER BY release_date ASC;

-- All films with a rating of 8 or higher
SELECT * FROM films WHERE score >= 8 ORDER BY score DESC;

-- All films with a rating of 7 or lower
SELECT * FROM films WHERE score <= 7 ORDER BY score DESC;

-- films released in 1990
SELECT * FROM films WHERE release_date = 1990;

-- films released before 2000
SELECT * FROM films WHERE release_date < 2000;

-- films released after 1990
SELECT * FROM films WHERE release_date > 1990 ORDER BY release_date DESC;

-- films released between 1990 and 1999
SELECT * FROM films WHERE release_date BETWEEN 1990 AND 1999 ORDER BY release_date DESC;

-- films with the genre of "SciFi"
SELECT * FROM films WHERE genre = 'SciFi';

-- films with the genre of "Western" or "SciFi"
SELECT * FROM films WHERE genre = 'Western' OR genre = 'SciFi';

-- films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre != 'SciFi';

-- films with the genre of "Western" released before 2000
SELECT * FROM films WHERE genre = 'Western' AND release_date < 2000;

-- films that have the world "Matrix" in their title
SELECT * FROM films WHERE title LIKE '%Matrix%';