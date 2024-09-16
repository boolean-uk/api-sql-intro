-- CREATE TABLE films (
-- 	film_id serial PRIMARY KEY,
-- 	title VARCHAR ( 50 ) UNIQUE NOT NULL,
-- 	genre VARCHAR ( 50 ) NOT NULL,
-- 	release_year INTEGER not null,
-- 	score INTEGER
-- );
--  INSERT INTO films (title, genre, release_year, score)
-- VALUES
--     ('The Shawshank Redemption', 'Drama', 1994, 9),
--     ('The Godfather', 'Crime', 1972, 9),
--     ('The Dark Knight', 'Action', 2008, 9),
--     ('Alien', 'SciFi', 1979, 9),
--     ('Total Recall', 'SciFi', 1990, 8),
--     ('The Matrix', 'SciFi', 1999, 8),
--     ('The Matrix Resurrections', 'SciFi', 2021, 5),
--     ('The Matrix Reloaded', 'SciFi', 2003, 6),
--     ('The Hunt for Red October', 'Thriller', 1990, 7),
--     ('Misery', 'Thriller', 1990, 7),
--     ('The Power Of The Dog', 'Western', 2021, 6),
--     ('Hell or High Water', 'Western', 2016, 8),
--     ('The Good the Bad and the Ugly', 'Western', 1966, 9),
--     ('Unforgiven', 'Western', 1992, 7);

-- SELECT * from films;

-- SELECT * from films ORDER by score DESC;
-- SELECT * from films ORDER by score ASC;

-- SELECT * from films WHERE score >= 8;
-- SELECT * from films WHERE score <= 7;
-- SELECT title,release_year from films where release_year = 1990;

-- SELECT title,release_year from films where release_year < 2000;

-- SELECT title,release_year from films where release_year > 1990;


-- SELECT title,release_year from films where release_year BETWEEN 1990 and 1999;

-- SELECT title,genre from films where genre = 'SciFi';
-- SELECT title,genre from films where genre != 'SciFi';

-- SELECT title,genre,release_year from films where genre = 'Western' and release_year < 2000;

-- SELECT title from films where title like '%Matrix%';













