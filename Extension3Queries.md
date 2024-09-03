/* Extension 3 */
SELECT director.name AS director_name, 
       COUNT(films.filmid) AS number_of_films
FROM director
LEFT JOIN films ON director.directorid = films.director_id
GROUP BY director.name;