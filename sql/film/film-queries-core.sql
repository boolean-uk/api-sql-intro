-- All films
SELECT * FROM film;

-- All films ordered by rating descending
SELECT * FROM film 
    ORDER BY score DESC;

-- All films ordered by release year ascending
SELECT * FROM film 
    ORDER BY release_year ASC;

-- All films with a rating of 8 or higher
SELECT * FROM film 
    WHERE score >= 8;

-- All films with a rating of 7 or lower
SELECT * FROM film 
    WHERE score <= 7;

-- Films released in 1990
SELECT * FROM film 
    WHERE release_year = 1990;

-- Films released before 2000
SELECT * FROM film 
    WHERE release_year < 2000;

-- Films released after 1990
SELECT * FROM film 
    WHERE release_year > 1990;

-- Films released between 1990 and 1999
SELECT * FROM film 
    WHERE release_year 
    BETWEEN 1990 AND 1999;

-- Films with the genre of "SciFi"
SELECT * FROM film 
    WHERE genre = 'SciFi';

-- Films with the genre of "Western" or "SciFi"
SELECT * FROM film 
    WHERE genre IN ('Western', 'SciFi');

-- Films with any genre apart from "SciFi"
SELECT * FROM film 
    WHERE genre != 'SciFi';

-- Films with the genre of "Western" released before 2000
SELECT * FROM film 
    WHERE genre = 'Western' AND release_year < 2000;

-- Films that have the word "Matrix" in their title
SELECT * FROM film 
    WHERE title ILIKE '%matrix%';
