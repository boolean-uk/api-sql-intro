SELECT 
    f.film_id,
    fdm.fk_film_id, --to verify that film_director_map is correct
    f.title,
    f.release_year,
    f.genre,
    f.score,
    d.name,
    d.director_id,
    fdm.fk_director_id --to verify that film_director_map is correct
    
FROM 
    films f
JOIN 
    film_director_map fdm ON f.film_id = fdm.fk_film_id
JOIN 
    directors d ON fdm.fk_director_id = d.director_id;