/*
In Neon, databases are stored on branches. By default, a project has one branch and one database.
You can select the branch and database to use from the drop-down menus above.

Try generating sample data and querying it by running the example statements below, or click
New Query to clear the editor.
*/
CREATE TABLE IF NOT EXISTS films(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  genre TEXT NOT NULL,
  release_year INTEGER,
  score INTEGER NOT NULL,
  UNIQUE(title)
);

INSERT INTO films (title, genre, release_year, score)
VALUES('The Shawshank Redemption', 'Drama', 1994, 9),
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

/*ALl films ordered by rating descending*/
SELECT * FROM films
ORDER BY score DESC;


/*ALl films ordered by release year ascending*/
SELECT * FROM films
ORDER BY release_year ASC;

/*ALl films with a rating of 8 or higher*/
SELECT * FROM films
WHERE score >= 8;


/*ALl films with a rating of 7 or lower*/
SELECT * FROM films
WHERE score <= 7;

/*films released in 1990*/
SELECT * FROM films
WHERE release_year = 1990;


/*films released before 2000*/
SELECT * FROM films
WHERE release_year < 2000;

/*films released after 1990*/
SELECT * FROM films
WHERE release_year > 1990;

/*films released between 1990 and 1999*/
SELECT * FROM films
WHERE release_year BETWEEN 1990 and 1999;

/*films with the genre of SciFi*/
SELECT * FROM films
WHERE genre = 'SciFi';

/*films with the genre of western or SciFi*/
SELECT * FROM films
WHERE genre = 'SciFi' or genre = 'Western';

/*films with any genre apart from SciFii*/
SELECT * FROM films
WHERE genre != 'SciFi';

/*films with genre Western released before 2000*/
SELECT * FROM films
WHERE genre = 'Western' AND release_year < 2000;

/*films that have teh word "matrix" in the title*/
SELECT * FROM films
WHERE title LIKE '%Matrix%';

/* Extension 1 */
/*Return the average film rating*/
SELECT AVG(score) AS average_rating
FROM films;

/*Return the total number of films*/
SELECT COUNT(films)
FROM films;

/*Return the average film rating by genre*/
SELECT genre, AVG(score) AS average_rating
FROM films
GROUP BY genre;

/*Extension 2 */

CREATE TABLE IF NOT EXISTS directors(
  directorId SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO directors (name) VALUES('Christopher Nolan'), ('Michael Bay'), ('Denis Villneuve');

ALTER TABLE films
ADD directorId INTEGER;

/* Extension 3 */
SELECT d.name AS director_name, COUNT(f.id) AS film_count
FROM directors d
JOIN films f ON d.directorId = f.directorId
GROUP BY d.name;
