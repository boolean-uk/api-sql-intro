-- Create table

create table films (
    id serial PRIMARY KEY,
    title TEXT UNIQUE NOT NULL,
    genre TEXT,
    release_year INTEGER,
    score INTEGER
);

-- Add data to table 

insert into films 
(title, genre, release_year, score)
VALUES
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
('Unforgiven', 'Western', 1992, 7);

-- Core queries

select * from films;

select * from films ORDER BY score desc;

select * from films ORDER by release_year asc;

select * from films where score >= 8;

select * from films where score <= 7;

select * from films where release_year = 1990;

select * from films where release_year < 2000;

select * from films where release_year > 1990;

select * from films where release_year = 1990;

select * from films where release_year >= 1990 and release_year <= 1999;

select * from films where genre = 'SciFi';

select * from films where genre = 'SciFi' or genre = 'Western';

select * from films where genre != 'SciFi';

select * from films where genre = 'Western' and release_year < 2000;

select * from films where title LIKE '%Matrix%';

-- Extension 1

select AVG(score) as average_rating from films;

select ROUND(AVG(score), 1) as rounded_average_rating from films;

select COUNT(*) from films;

SELECT genre, avg(score) as average_genre_rating from films group by genre;

SELECT genre, ROUND(AVG(score), 1) as rounded_genre_rating from films group by genre;

-- Extension 2

create table directors (
	id serial PRIMARY KEY,
	name text UNIQUE
);

INSERT INTO directors 
(name)
values 
('Dranl Farabont'),
('Crancis Pord Ffopola'),
('Christoner Pholan'),
('Scidley Rott'),
('Haul Verpoeven'),
('Bachowski Wrothers'),
('Wana Lach of Ski'),
('Tonn McJieran'),
('Nob Reirer'),
('Cane Jampion'),
('Zavid Macendie'),
('Serlio Geone'),
('Es Lint Woodcat ');

ALTER TABLE films ADD COLUMN directorId INTEGER;

UPDATE films
SET directorid = case
	when id = 1 then 1
	when id = 2 then 2
	when id = 3 then 3
	when id = 4 then 4
	when id = 5 then 5
	when id = 6 then 6
	when id = 7 then 7
	when id = 8 then 6 
	when id = 9 then 8
	when id = 10 then 9
	when id = 11 then 10 
	when id = 12 then 11
	when id = 13 then 12
	when id = 14 then 13
END
where id IN(1,2,3,4,5,6,7,8,9,10,11,12,13,14);


SELECT title, name from films 
	JOIN directors
	on films.directorid = directors.id
order by films.id asc;


-- Extension 3

SELECT name, COUNT(films.id) from directors
	join films
	on directors.id = films.directorid
	group by name;