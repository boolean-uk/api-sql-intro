select * from films;
select * from films ORDER BY score DESC;
select * from films ORDER BY year ASC;
select * from films where score >= 8;
select * from films where score >= 7;
select * from films where year = 1990;
select * from films where year < 2000;
select * from films where year between 1990 and 1999;
select * from films where genre = 'SciFi';
select * from films where genre = 'SciFi' or genre = 'Western';
select * from films where genre != 'SciFi';
select * from films where genre = 'Western' and year < 2000;
select * from films where title LIKE '%Matrix%'

// EXTENSION 1
select AVG(Score) from films;
select count(*) from films;
select Genre, AVG(Score) from films group by Genre;

// EXTENSION 2


