-- https://www.w3schools.com/sql/func_sqlserver_avg.asp
SELECT AVG(score) AS "Average film score" FROM films;

-- https://www.w3schools.com/sql/func_sqlserver_count.asp
SELECT COUNT(*) AS "Amount of films" FROM films;

SELECT genre, AVG(score) AS "Average score of genre" FROM films 
GROUP BY genre
ORDER BY "Average score of genre" DESC;

-- https://www.w3schools.com/sql/sql_join.asp
SELECT films.title AS "Film title", directors.name AS "Director name" FROM films
INNER JOIN directors ON directors.id = films.director_id;

SELECT COUNT(films.id) AS "Number of films", directors.name AS "Director name" FROM films
INNER JOIN directors ON directors.id = films.director_id
GROUP BY directors.name;