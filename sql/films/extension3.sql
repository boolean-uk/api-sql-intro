select
    directors.name as director_name
    count(films.film_id) as number_of_films_directed
from
    directors
left join
    films on directors.director_id = films.director_id
group by
    directors.name
order by
    number_of_films_directed desc, director_name