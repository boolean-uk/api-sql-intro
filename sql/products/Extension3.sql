/*
Extension 3
Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.*/

SELECT director.fullname, Count(films) FROM director INNER JOIN films ON films.directorid=director.id GROUP BY director.fullname