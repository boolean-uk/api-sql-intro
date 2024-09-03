/* Extension 1 */

/* Return the average film rating */
SELECT AVG(Rating) FROM films;

/* Return the total number of films */
SELECT COUNT(*) FROM films;

/* Return the average film rating by genre */
SELECT Genre, ROUND(AVG(Rating), 1) FROM films GROUP BY Genre;