create table directors (
    director_id SERIAL PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL 
)

insert into directors (fullname) values
                                        ('Petros Moustakis'),
                                        ('John Doe')
                                        ('Barbara Smith')
                                        ('David Lynch')

select films, directors.name as directors_name
from films
join directors on films.director_id = directors.director_id