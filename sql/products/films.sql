CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title TEXT UNIQUE NOT NULL,
    genre TEXT,
    release_year INTEGER,
    score INTEGER CHECK (score BETWEEN 0 AND 10)
);
INSERT INTO films (title, genre, release_year, score) VALUES 
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

--standard criteria

select * from films

select title,score from films
order by score desc

select title,release_year from films
order by release_year asc

select title,score from films
where score >= 8
order by score asc

select title,score from films
where score <= 7
order by score asc

select title,release_year from films
where release_year = 1990

select title,release_year from films
where release_year <= 2000
order by release_year desc

select title,release_year from films
where release_year > 1990
order by release_year desc

select title,release_year from films
where release_year >= 1990 and release_year <= 1999
order by release_year asc

select title,genre from films
where genre = 'SciFi'

select title,genre from films
where genre = 'SciFi' or genre = 'Western'

select title,genre from films
where genre != 'SciFi'

select title,genre,release_year from films
where genre = 'Western' and release_year < 2000

select title from films
where title like '%Matrix%'

--extension 1
select AVG(score) from films

select COUNT(*) from films

select genre, avg(score) as average_genre_rating from films group by genre;