/*
CREATE TABLE Films(
  id serial PRIMARY KEY,
  title VARCHAR (100) UNIQUE NOT NULL,
  genre VARCHAR (100) NOT NULL,
  releaseyear INTEGER NOT NULL,
  score INTEGER CHECK(score >= 0 AND score <= 10) NOT NULL
);hOW T
*/

/*
CREATE TABLE Films(
  id serial PRIMARY KEY,
  title VARCHAR (100) UNIQUE NOT NULL,
  genre VARCHAR (100) NOT NULL,
  releaseyear INTEGER NOT NULL,
  score INTEGER CHECK(score >= 0 AND score <= 10) NOT NULL,
  director_fk INTEGER NOT NULL
);
*/ 

/*
INSERT INTO films (title, genre, releaseyear, score, director_fk) VALUES
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 1),
('The Dark Knight', 'Action', 2008, 9, 1),
('Alien', 'SciFi', 1979, 9, 2),
('Total Recall', 'SciFi', 1990, 8, 3),
('The Matrix', 'SciFi', 1999, 8, 4),
('The Matrix Resurrections', 'SciFi', 2021, 5, 4),
('The Matrix Reloaded', 'SciFi', 2003, 6, 4),
('The Hunt for Red October', 'Thriller', 1990, 7, 3),
('Misery', 'Thriller', 1990, 7, 2),
('The Power Of The Dog', 'Western', 2021, 6, 1),
('Hell or High Water', 'Western', 2016, 8, 2),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 3),
('Unforgiven', 'Western', 1992, 7, 4);
*/

/* All films */
SELECT * FROM films;

/* All films ordered by rating descending */
SELECT * FROM films ORDER BY films.score DESC;

/* All films ordered by release year ascending */
SELECT * FROM films ORDER BY films.releaseyear ASC;

/* All films with a rating of 8 or higher */
SELECT * FROM films WHERE films.score >= 8;

/* All films with a rating of 7 or lower */
SELECT * FROM films WHERE films.score <= 7;

/* films released in 1990 */
SELECT * FROM films WHERE films.releaseyear = 1990;

/* films released before 2000 */
SELECT * FROM films WHERE films.releaseyear < 2000;

/* films released after 1990 */
SELECT * FROM films WHERE films.releaseyear > 1990;

/* films released between 1990 and 1999 */
SELECT * FROM films WHERE (films.releaseyear >= 1990 AND films.releaseyear <= 1999);

/* films with the genre of "SciFi" */
SELECT * FROM films WHERE films.genre = 'SciFi';

/* films with the genre of "Western" or "SciFi" */
SELECT * FROM films WHERE (films.genre = 'SciFi' OR films.genre = 'Western');

/* films with any genre apart from "SciFi" */
SELECT * FROM films WHERE films.genre != 'SciFi';

/* films with the genre of "Western" released before 2000 */
SELECT * FROM films WHERE (films.genre = 'Western' AND films.releaseyear < 2000);

/* films that have the world "Matrix" in their title */
SELECT * FROM films WHERE films.title LIKE '%Matrix%';


/* Extension 1 */
/* Return the average film rating */
SELECT AVG(films.score) FROM films;

/* Return the total number of films */
SELECT COUNT(*) FROM films;

/* Return the average film rating by genre */
SELECT genre, AVG(films.score) FROM films GROUP BY films.genre;


/* Extension 2 */
/*
CREATE TABLE Directors
(
	id serial PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO Directors(name) VALUES 
('Melvin'),
('Thomas'),
('George'),
('Danil');
*/

/* returns a list of films with their director */
SELECT f.title, d.name FROM films f JOIN directors d ON f.director_fk = d.id;

/* Extension 3 */
/* returns a lists of directors along with the number of films they have directed */
SELECT d.name, COUNT(*) FROM directors d JOIN films f ON d.id = f.director_fk GROUP BY d.name;