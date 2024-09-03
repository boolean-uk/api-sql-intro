CREATE TABLE IF NOT EXISTS films (

		film_id SERIAL PRIMARY KEY,
		title TEXT NOT NULL,
		UNIQUE(title),
		genre TEXT NOT NULL,
		year INTEGER,
		score INTEGER CHECK (score>=0 AND score <=10)


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


// All films
SELECT title FROM films;


// All films ordered by rating descending
SELECT title FROM films ORDER BY score DESC;


// All films ordered by release year ascending
SELECT title FROM films ORDER BY release_year ASC;


// All films with a rating of 8 or higher
SELECT title FROM films WHERE score >= 8;


//All films with a rating of 7 or lower
SELECT title FROM films WHERE score <= 7;


// films released in 1990
SELECT title FROM films WHERE release_year = 1990;


// films released before 2000
SELECT title FROM films WHERE release_year < 2000;


// films released after 1990
SELECT title FROM films WHERE release_year > 1990;


// films released between 1990 and 1999
SELECT title FROM films WHERE release_year > 1990 and release_year < 1999;


// films with the genre of "SciFi"
SELECT title FROM films WHERE genre LIKE 'SciFi';


// films with the genre of "Western" or "SciFi"
SELECT title FROM films WHERE genre LIKE 'SciFi' or genre LIKE 'Western';


// films with any genre apart from "SciFi"
SELECT * FROM films WHERE genre NOT LIKE 'SciFi';


// films with the genre of "Western" released before 2000
SELECT title FROM films WHERE genre LIKE 'Western' and release_year < 2000;


// films that have the world "Matrix" in their title
SELECT title FROM films WHERE title LIKE '%Matrix%';






