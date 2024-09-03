-- Using an SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT f.title AS "Title", f.genre AS "Genre", f.release_year AS "Release year", f.score AS "Score", d.Name AS "Director"
FROM films f
LEFT JOIN directors d ON f.director_id = d.id;