SELECT name,count(name) as num_of_films FROM directors JOIN films ON films.director_id = directors.directorId GROUP BY name;
