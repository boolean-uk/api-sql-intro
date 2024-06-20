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