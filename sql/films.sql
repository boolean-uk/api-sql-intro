create table films (
id serial primary KEY,
Title text,
Genre text,
Release_Year INTEGER,
Rating INTEGER,
UNIQUE(Title)
)

insert into films
(title, genre, release_year, rating)
values ('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'Sci-fi', 1979, 9),
('Total Recall', 'Sci-fi', 1990, 8),
('The Matrix', 'Sci-fi', 1999, 8),
('The Matrix Resurections', 'Sci-fi', 2021, 5),
('The Matrix Reloaded', 'Sci-fi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good, The Bad and The Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7)

select * from films

select * from films
where rating <= 9
order by rating desc

select * from films
where release_year >= 1966
order by release_year asc

select * from films
where rating >= 8
order by rating desc

select * from films
where rating <= 7
order by rating desc

select * from films
where release_year = 1990

select * from films
where release_year <= 2000

select * from films
where release_year >= 1990
order by release_year asc

select * from films
where release_year BETWEEN 1990 and 1999
order by release_year asc

select * from films
where genre = 'Sci-fi'
order by release_year asc

select * from films
where genre = 'Sci-fi' OR genre = 'Western'
order by release_year asc

select * from films
where genre != 'Sci-fi'
order by release_year asc

select * from films
where genre = 'Western' AND
release_year <= 2000
order by release_year asc

select * from films
where title like '%Matrix%'

select cast(avg(rating) as DECIMAL(10, 1)) as average_film_rating from films

select count(title) as total_num_films from films

select genre, cast(avg(rating) as DECIMAL(10, 1)) as average_film_rating from films
group by genre

create table directors (
director_id serial primary key,
name text,
UNIQUE(director_id)
)

insert into directors
(name)
values ('Frank Darapont'),
('Mario Puzo'),
('Christopher Nolan'),
('Ridley Scott'),
('Paul Veroeven'),
('The Wachowski'),
('John McTiernan'),
('Rob Reiner'),
('Jane Campion'),
('David MacKenzie'),
('Sergio Leone'),
('Clint Eastwood')

alter table films
add director_id serial

update films
set director_id = 6
where title like '%Matrix%'

select * from films
join directors
on films.director_id = directors.director_id

select name, count(name) as total_films from films
join directors
on films.director_id = directors.director_id
group by name
