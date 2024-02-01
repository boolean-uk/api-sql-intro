-- Extension 1
SELECT AVG(Score) FROM films;

SELECT COUNT(*) FROM films;

SELECT AVG(Score) FROM films GROUP BY Genre;


-- Extension 2
SELECT films.title, directors.name AS directors FROM films
    JOIN directors ON films.directorid = directors.id;


-- Extension 3
SELECT directors.name, COUNT(*) FROM directors JOIN films ON directors.id = films.directorid GROUP BY directors.name;