/* CORE */

CREATE TABLE Films (
	FilmID SERIAL PRIMARY KEY,
  Title VARCHAR(255) NOT NULL UNIQUE,
  Genre VARCHAR(255) NOT NULL,
  ReleaseYear INTEGER NOT NULL,
  Rating INTEGER NOT NULL,
);

INSERT INTO films (Title, Genre, ReleaseYear, Rating, Director_ID) VALUES
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

/* All films */
SELECT * FROM films;

/* All films ordered by rating descending */
SELECT * FROM films ORDER BY Rating DESC;

/* All fimls ordered by release year ascending */
SELECT * FROM films ORDER BY ReleaseYear ASC;

/* All films with a rating of 8 or higher */
SELECT * FROM films WHERE Rating >= 8;

/* All films with a rating of 7 or lower */
SELECT * FROM films WHERE Rating <= 7;

/* films released in 1990 */
SELECT * FROM films WHERE ReleaseYear = 1990;

/* films released before 2000 */
SELECT * FROM films WHERE ReleaseYear < 2000;

/* films released after 1990 */
SELECT * FROM films WHERE ReleaseYear > 1990;

/* films released between 1990 and 1999 */
SELECT * FROM films WHERE ReleaseYear BETWEEN 1990 AND 1999;

/* films with the genre of "SciFi" */
SELECT * FROM films WHERE Genre LIKE 'SciFi';

/* films with the genre of "Western" or "SciFi" */
SELECT * FROM films WHERE Genre Like 'Western' OR Genre LIKE 'SciFi';

/* films with any genre apart from "SciFi" */
SELECT * FROM films WHERE Genre NOT LIKE 'SciFi';

/* films with the genre of "Western" released before 2000 */
SELECT * FROM films WHERE Genre Like 'Western' AND ReleaseYear < 2000;

/* films that have the world "Matrix" in their title */
SELECT * FROM films WHERE Title Like '%Matrix%';