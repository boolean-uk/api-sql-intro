select * from films;
select * from films order by release_year desc;
select * from films order by release_year asc;
select * from films where score >= 8;
select * from films where score <= 8;
select * from films where release_year = 1990;
select * from films where release_year < 2000;
select * from films where release_year > 1990;
select * from films where release_year >= 1990 and release_year <= 1999;
select * from films where genre = "SciFi";
select * from films where genre = "SciFi" or genre = "Western";
select * from films where not genre = "SciFi";
select * from films where genre = "Western" and release_year < 2000;
select * from films where title like "%Matrix%";

-- Extension 1
select avg(score) from films;
select count(*) from films;
select genre, avg(score) from films group by genre;

-- Extension 2
select * from films left join directors on films.director = directors.id;
select directors.name, count(films.title) from films inner join directors on films.director = directors.id group by directors.name;
