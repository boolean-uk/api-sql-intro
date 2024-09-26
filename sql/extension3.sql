/* Extension 3
 * Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
 */
SELECT directors.*, COUNT(films.*)
FROM films
INNER JOIN directors
ON films.directorid = directors.id
GROUP BY directors.id;
