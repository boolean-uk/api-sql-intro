SELECT ROUND(AVG(rating), 2) FROM films;
SELECT COUNT(title) FROM films;
SELECT avg(rating), genre FROM films
group by genre