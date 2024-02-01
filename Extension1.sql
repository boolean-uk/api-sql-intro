
/* Average film rating */
SELECT ROUND(AVG(score),2) FROM film

/* Total number of films */
SELECT COUNT(*) FROM film

/* Average film rating by genre */
SELECT ROUND(AVG(score),2), genre FROM film
GROUP BY genre;
