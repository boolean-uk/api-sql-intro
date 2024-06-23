CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title text UNIQUE NOT NULL,
    genre text,
    release_year INTEGER,
    score INTEGER CHECK (
        score >= 0
        AND score <= 10
    )
);

begin;
insert into films(title, genre, release_year, score)
values ('The Shawshank Redemption', 'Drama', 1994, 9),
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
returning *;
commit;


select * from films;

select * from films
order by score desc;

select * from films
order by release_year asc;

select * from films
where 1=1
and score > 7;

select * from films
where 1=1
and score < 8;

select * from films
where 1=1
and release_year = 1990;

select * from films
where 1=1
and release_year < 2000;

select * from films
where 1=1
and release_year BETWEEN 1990 and 1999;

select * from films
where 1=1
and genre = 'SciFi';

select * from films
where 1=1
and genre = 'SciFi'
or genre = 'Western';

select * from films
where 1=1
and genre != 'SciFi';

select * from films
where 1=1
and genre = 'Western'
and release_year < 2000;

select * from films
where 1=1
and title like '%Matrix%';

select avg(score) from films;

select count(*) from films;

select avg(score) from films
group by genre;