--Return the average film rating
SELECT AVG(score) FROM films

--Return the total number of films
SELECT COUNT(*) FROM films

--Return the average film rating by genre
SELECT genre, AVG(score) FROM films GROUP BY genre

--Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT * FROM films LEFT JOIN directors ON films.director = directors.id

--Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
SELECT directors.name, COUNT(*) FROM films LEFT JOIN directors ON films.director = directors.id GROUP BY directors.id