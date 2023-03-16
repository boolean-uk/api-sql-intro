-- https://www.w3schools.com/sql/func_sqlserver_avg.asp
SELECT AVG(score) AS "Average film score" FROM films;

-- https://www.w3schools.com/sql/func_sqlserver_count.asp
SELECT COUNT(*) AS "Amount of films" FROM films;

SELECT genre, AVG(score) AS "Average score of genre" FROM films 
GROUP BY genre
ORDER BY "Average score of genre" DESC;