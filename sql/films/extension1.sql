SELECT AVG(score) from films;

SELECT COUNT(id) from films;

SELECT ROUND(AVG(score), 2) AS "Rounded average", genre from films group by genre