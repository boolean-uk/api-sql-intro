-- All Films - Query 1
SELECT * FROM films;

-- All films ordered by rating descending - Query 2
SELECT * FROM films ORDER BY score DESC;

-- All films ordered by release year ascending - Query 3
SELECT * FROM films ORDER BY release_year;

-- All films with a rating of 8 or higher - Query 4
SELECT * FROM films WHERE score >= 8;

-- All films with a rating of 7 or lower - Query 5
SELECT * FROM films WHERE score <= 7;

-- films released in 1990 - Query 6
SELECT * FROM films WHERE release_year = 1990;

-- films released before 2000 - Query 7
SELECT * FROM films WHERE release_year < 2000;

-- films released after 1990 - Query 8
SELECT * FROM films WHERE release_year > 1990;

-- films released between 1990 and 1999 - Query 9
SELECT * FROM films WHERE release_year > 1990 and release_year < 1999;

-- films with the genre of "SciFi" - Query 10
SELECT * FROM films WHERE genre = 'SciFi';

-- films with the genre of "Western" or "SciFi" - Query 11
SELECT * FROM films WHERE genre = 'Western' or genre = 'SciFi';

-- films with any genre apart from "SciFi" - Query 12
SELECT * FROM films WHERE genre != 'SciFi';

-- films with the genre of "Western" released before 2000 - Query 13
SELECT * FROM films WHERE genre = 'Western' and release_year < 2000;

-- films that have the world "Matrix" in their title - Query 14
SELECT * FROM films WHERE title LIKE '%Matrix%';