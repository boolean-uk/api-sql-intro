-- All films
select * from films

-- All films ordered by rating descending
select * from films
order by score DESC

-- All films ordered by release year ascending
select * from films
order by release_year ASC

-- All films with a rating of 8 or higher
select * from films
where score >= 8

-- All films with a rating of 7 or lower
select * from films
where score <= 7

-- films released in 1990
select * from films
where release_year = 1990

-- films released before 2000
select * from films
where release_year <= 2000

-- films released after 1990
select * from films
where release_year >= 1990

-- films released between 1990 and 1999
select * from films
where release_year >= 1990 and 
release_year <= 1999

-- films with the genre of "SciFi"
select * from films
where genre = 'SciFi'

-- films with the genre of "Western" or "SciFi"
select * from films
where genre = 'SciFi' or 
genre = 'Western'

-- films with any genre apart from "SciFi"
select * from films
where genre != 'SciFi'

-- films with the genre of "Western" released before 2000
select * from films
where genre = 'Western' and
release_year <= 2000

-- films that have the world "Matrix" in their title
select * from films
where title LIKE '% Matrix %' OR
title LIKE '% Matrix' OR
title LIKE 'Matrix %'


-- EXTENSION 1

-- Return the average film rating

select title, genre, release_year,
avg(score) as average_film_rating from films
GROUP by title, genre, release_year

-- Return the average film rating by genre

select genre,
avg(score) as average_film_rating_by_genre from films
GROUP by genre

-- Return the total number of films

SELECT count(*) from films
