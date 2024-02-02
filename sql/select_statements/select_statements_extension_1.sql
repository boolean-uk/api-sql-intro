/*
* Write SQL SELECT statements to:
* Return the average film rating
* Return the total number of films
* Return the average film rating by genre
* For these, you will need to research `COUNT`, `AVG` and `GROUP BY` keywords in postgres.
*/

--SELECT AVG(score) FROM films
--SELECT COUNT(*) FROM films
--SELECT genre, AVG(score) FROM films GROUP BY genre