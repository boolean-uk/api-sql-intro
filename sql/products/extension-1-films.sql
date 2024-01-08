--return the average films rating
SELECT AVG(score) FROM films;

--return the total number of fimls
SELECT COUNT(title) FROM films;

--return the average film rating by genre
SELECT genre, AVG(score) FROM films
GROUP BY genre;