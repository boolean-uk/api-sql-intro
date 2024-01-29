--Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT director_first_name || ' ' || director_last_name AS "Director name", COUNT(*)
FROM film 
INNER JOIN director ON film_fk_director = director_id
GROUP BY director_id;