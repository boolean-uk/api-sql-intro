INSERT INTO films (title, genre, release_year, score) VALUES
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
('The Good, the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7);

SELECT title FROM films;

SELECT title FROM films ORDER BY score DESC;

SELECT title FROM films ORDER BY release_year ASC;

SELECT title FROM films WHERE score >= 8;

SELECT title FROM films WHERE score <= 7;

SELECT title FROM films WHERE release_year = 1990;

SELECT title FROM films WHERE release_year < 2000;

SELECT title FROM films WHERE release_year > 1990;

SELECT title FROM films WHERE release_year BETWEEN 1990 AND 1999;

SELECT title FROM films WHERE genre = 'SciFi';

SELECT title FROM films WHERE genre = 'SciFi' OR genre = 'Western';

SELECT title FROM films WHERE genre != 'SciFi';

SELECT title FROM films WHERE genre = 'Western' AND release_year < 2000;

SELECT title FROM films WHERE title LIKE '%Matrix%';