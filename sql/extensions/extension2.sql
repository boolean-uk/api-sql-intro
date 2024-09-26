create table directors (
id serial primary key,
name text
)

create table films (
id serial primary key,
title text unique,
genre text,
releaseyear int,
score int,
directorid int,
FOREIGN KEY (directorid) REFERENCES directors(id)
)

insert into directors (name) (
values
('Director A'),
('Director B'),
('Director C')
)

insert into films (title, genre, releaseyear, score, directorid) (
values
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 1),
('Total Recall', 'SciFi', 1990, 8, 2),
('The Matrix', 'SciFi', 1999, 8, 3),
('The Matrix Resurrections', 'SciFi', 2021, 5, 1),
('The Matrix Reloaded', 'SciFi', 2003, 6, 2),
('The Hunt for Red October', 'Thriller', 1990, 7, 3),
('Misery', 'Thriller', 1990, 7, 1),
('The Power Of The Dog', 'Western', 2021, 6, 2),
('Hell or High Water', 'Western', 2016, 8, 3),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 1),
('Unforgiven', 'Western', 1992, 7, 2)
)

select * from films inner join directors on directors.id=films.directorid
