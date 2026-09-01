/* select all films */
SELECT * FROM films;

/* All films ordered by rating descending */
SELECT * FROM films ORDER BY score DESC;

/* All films ordered by release year ascending */
SELECT * FROM films ORDER BY release_year ASC;

/* All films with a rating of 8 or higher */
SELECT * FROM films WHERE score >= 8;

/* All films with a rating of 7 or lower */
SELECT * FROM films WHERE score <= 7;

/* All films released in 1990 */
SELECT * FROM films WHERE release_year = 1990;

/*films released after 1990*/
SELECT * FROM films WHERE release_year > 1990;

/* films released between 1990 and 2000 */
SELECT * FROM films WHERE release_year BETWEEN 1990 AND 2000;

/* films with genre of "SciFi" */
SELECT * FROM films WHERE genre = "Sci-Fi";

/* films with the genre of "western" or "Sci-Fi" */
SELECT * FROM films WHERE genre = "Western" OR genre = "Sci-Fi";

/* films with any genre apart from "Sci-Fi" */
SELECT * FROM films WHERE genre != "Sci-Fi";

/* films with the genre of "western" released before 2000 */
SELECT * FROM films WHERE genre = "Western" AND release_year < 2000;

/* films that have the world "matrix" in their title */
SELECT * FROM films WHERE title LIKE "%matrix%";

/* ------ EXTENSION 1 ------ */

/* retyrn the average score of all films */
SELECT AVG(score) FROM films;

/* return the total number of films */
SELECT COUNT(*) FROM films;

/* return the average film rating by genre */
SELECT genre, AVG(score) FROM films GROUP BY genre;