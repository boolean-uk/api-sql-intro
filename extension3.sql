select directors.name, count(films_dk.title) from directors inner join films_dk on directors.director_id=films_dk.director_id group by directors.name;
