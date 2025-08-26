-- Extension 1
-- Select average score
select avg(score) as average_score
from films

-- Select total number of films
select count(title)
from films

-- Select average score grouped by genre
select genre, avg(score) as average_score
from films
group by genre


-- Extension 2
-- Create directors table
create table if not exists directors (
directorId integer generated always as identity primary key,
name varchar(50) not null unique
)

-- Create new version of films that include reference to director
create table if not exists films_extension (
    id integer generated always as identity primary key,
    title varchar(100) not null unique,
    genre varchar(32) not null,
    release_year integer not null,
    score integer not null,
    directorId integer not null,
    constraint score_of_ten check (score > 0 and score < 11),
    constraint fk_director foreign key (directorId) references directors(directorId)
)

-- Insert into directors
insert into directors (name) values
('Frank Darabont'),
('Francis Ford Coppola'),
('Christopher Nolan'),
('Ridley Scott'),
('Paul Verhoeven'),
('Lana Wachowski'),
('John McTiernan'),
('Rob Reiner'),
('Jane Campion'),
('David Mackenzie'),
('Sergio Leone'),
('Clint Eastwood')

-- insert into new films table
insert into films_extension (title, genre, release_year, score, directorId) values
('The Shawshank Redemption', 'Drama', 1994, 9, 1),
('The Godfather', 'Crime', 1972, 9, 2),
('The Dark Knight', 'Action', 2008, 9, 3),
('Alien', 'SciFi', 1979, 9, 4),
('Total Recall', 'SciFi', 1990, 8, 5),
('The Matrix', 'SciFi', 1999, 8, 6),
('The Matrix Resurrections', 'SciFi', 2021, 5, 6),
('The Matrix Reloaded', 'SciFi', 2003, 6, 6),
('The Hunt for Red October', 'Thriller', 1990, 7, 7),
('Misery', 'Thriller', 1990, 7, 8),
('The Power Of The Dog', 'Western', 2021, 6, 9),
('Hell or High Water', 'Western', 2016, 8, 10),
('The Good the Bad and the Ugly', 'Western', 1966, 9, 11),
('Unforgiven', 'Western', 1992, 7, 12);


-- Select films and their director
select f.title, f.genre, f.release_year, f.score, d.name as director
from films_extension f
join directors d on f.directorId = d.directorId;


-- Extension 3
-- Select all directors and number of films they have directed
select count(f.title) as film_count, d.name as director
from directors d
join films_extension f on d.directorId = f.directorId
group by d.name
order by film_count desc
