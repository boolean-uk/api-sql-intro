SELECT films.id, films.title, films.title, films.release_year, films.score, director.name
FROM films 
INNER JOIN director ON films.director_id=director.id;