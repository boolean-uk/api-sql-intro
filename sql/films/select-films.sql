select * from films;
select * from films order by score desc;
select * from films order by release_year;
select * from films where score >= 8;
select * from films where score <= 7;
select * from films where release_year = 1990;
select * from films where release_year < 2000;
select * from films where release_year > 1990;
select * from films where release_year between 1990 AND 1999;
select * from films where genre = 'SciFi';
select * from films where genre = 'SciFi' OR genre = 'Western';
select * from films where genre != 'SciFi';
select * from films where genre = 'Western' AND release_year < 2000;
select * from films where title LIKE '%Matrix%';

--Extension 1
select avg(score) from films;
select count(*) from films;
select genre, avg(score) from films group by genre;

--Extension 2
select f.title, d.name from films f left join directors d ON f.directorid = d.id;

--Extension 3
select d.name, count(f.id) AS films_directed from films f left join directors d ON f.directorid = d.id group by d.name;