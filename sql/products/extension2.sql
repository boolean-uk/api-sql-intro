create table if not exists films (
    id serial primary key,
    title varchar(50) unique,
    genre varchar(50),
    release_year integer,
    score integer,
	director_id integer,
	constraint fk_director
		foreign key (director_id)
			references director(id)
);

create table if not exists director (
    id serial primary key,
    name text not null
);

insert into films
(title, director_id, genre, release_year, score)
values
('The Shawshank Redemption',1, 'Drama', 1994, 9),
('The Godfather', 2, 'Crime', 1972, 9),
('The Dark Knight', 1, 'Action', 2008, 9),
('Alien', 2, 'SciFi', 1979, 9),
('Total Recall', 1, 'SciFi', 1990, 8),
('The Matrix', 2, 'SciFi', 1999, 8),
('The Matrix Resurrections', 1, 'SciFi', 2021, 5),
('The Matrix Reloaded', 2, 'SciFi', 2003, 6),
('The Hunt for Red October', 1, 'Thriller', 1990, 7),
('Misery', 2, 'Thriller', 1990, 7),
('The Power Of The Dog', 1, 'Western', 2021, 6),
('Hell or High Water', 2, 'Western', 2016, 8),
('The Good the Bad and the Ugly', 1, 'Western', 1966, 9),
('Unforgiven', 2, 'Western', 1992, 7);

insert into director
	(name)
VALUES
	('Pokemon Fan'),
	('Rose Breedveld');

SELECT title, director.name
from films
JOIN director
ON films.director_id = director.id;
