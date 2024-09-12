create table if not exists films (
    id serial primary key,
    title varchar(50) unique,
    genre varchar(50),
    release_year integer,
    score integer
);

insert into films 
(title, genre, release_year, score) values
('The Shawshank Redemption', 'Drama', 1994, 9),
('The Godfather', 'Crime', 1972, 9),
('The Dark Knight', 'Action', 2008, 9),
('Alien', 'SciFi', 1979, 9),
('Total Recall', 'SciFi', 1990, 8),
('The Matrix', 'SciFi', 1999, 8),
('The Matrix Resurrections', 'SciFi', 2021, 5),
('The Matrix Reloaded', 'SciFi', 2003, 6),
('The Hunt for Red October', 'Thriller', 1990, 7),
('Misery', 'Thriller', 1990, 7),
('The Power Of The Dog', 'Western', 2021, 6),
('Hell or High Water', 'Western', 2016, 8),
('The Good the Bad and the Ugly', 'Western', 1966, 9),
('Unforgiven', 'Western', 1992, 7)

--All films
select * from films;

--All films ordered by rating descending
select * from films order by score desc;

--All films ordered by release year ascending
select * from films order by release_year asc;

--All films with a rating of 8 or higher
select * from films where score >= 8;

--All films with a rating of 7 or lower
select * from films where score <= 7;

--films released in 1990
select * from films where release_year = 1990;

--films released before 2000
select * from films where release_year < 2000;

--films released after 1990
select * from films where release_year > 1990;

--films released between 1990 and 1999
select * from films where release_year between 1990 and 1999;

--films with the genre of "SciFi"
select * from films where genre = 'SciFi';

--films with the genre of "Western" or "SciFi"
select * from films where genre = 'SciFi' OR genre = 'Western';
select * from films where genre in ('SciFi', 'Western');

--films with any genre apart from "SciFi"
select * from films where genre not like 'SciFi';

--films with the genre of "Western" released before 2000
select * from films where release_year < 2000 and genre like 'Western';

--films that have the world "Matrix" in their title
select * from films where title like '%Matrix%';



