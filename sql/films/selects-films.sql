select * from films;

select * from films order by score desc, title;

select * from films order by release_year asc, title

select * from films where score >= 8

select * from films where score <= 7

select * from films where release_year = 1990

select * from films where release_year < 2000

SELECT * FROM films WHERE release_year > 1990;

SELECT * FROM films WHERE release_year BETWEEN 1990 AND 1999;

SELECT * FROM films WHERE genre = 'SciFi';

SELECT * FROM films WHERE genre = 'Western' or genre = 'SciFi'

SELECT * FROM films WHERE genre <> 'SciFi';

SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;

SELECT * FROM films WHERE title ILIKE '%Matrix%';
