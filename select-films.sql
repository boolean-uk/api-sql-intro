select * from films;
select * from films ORDER BY score DESC
select * from filmsorder by release_year ASC
select * from films where score >= 8
select * from films where score <= 7
select * from films where release_year = '1990'
select * from films where release_year < '2000'
select * from films where release_year > '1990'
SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999;
SELECT * FROM films where genre = 'SciFi'
SELECT * FROM films WHERE genre IN ('Western', 'SciFi');
SELECT * FROM films WHERE genre != 'SciFi';
SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000
SELECT * FROM films where title LIKE '%Matrix%'