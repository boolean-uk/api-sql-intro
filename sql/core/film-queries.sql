-- All films
SELECT * FROM film;

-- All films ordered by rating descending
SELECT * FROM film ORDER BY film_score DESC;

-- All films ordered by release year ascending
SELECT * FROM film ORDER BY film_release_year;

-- All films with a rating of 8 or higher
SELECT * FROM film WHERE film_score >= 8;

-- All films with a rating of 7 or lower
SELECT * FROM film WHERE film_score <= 7;

-- films released in 1990
SELECT * FROM film WHERE film_release_year = 1990;

-- films released before 2000
SELECT * FROM film WHERE film_release_year < 2000;

-- films released after 1990
SELECT * FROM film WHERE film_release_year > 1990;

-- films released between 1990 and 1999
SELECT * FROM film WHERE film_release_year BETWEEN 1990 AND 1999;
--SELECT * FROM film WHERE film_release_year > 1990 AND film_release_year < 1999;

-- films with the genre of "SciFi"
SELECT * FROM film WHERE film_genre = 'SciFi';

-- films with the genre of "Western" or "SciFi"
SELECT * FROM film WHERE film_genre = 'Western' OR film_genre = 'SciFi';

-- films with any genre apart from "SciFi"
SELECT * FROM film WHERE film_genre != 'SciFi';

-- films with the genre of "Western" released before 2000
SELECT * FROM film WHERE film_genre = 'Western' AND film_release_year < 2000

-- films that have the world "Matrix" in their title
SELECT * FROM film WHERE film_title LIKE '%Matrix%';