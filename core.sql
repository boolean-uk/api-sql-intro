
create table films(id serial, title text, genre text, release_year integer, score integer, primary key (id), unique(title));
select * from films;

insert into films (title, genre,release_year,score) values ('The Shawshank Redemption'      ,'Drama'    , 1994, 9);
insert into films (title, genre,release_year,score) values ('The Godfather'                 ,'Crime'    , 1972, 9);
insert into films (title, genre,release_year,score) values ('The Dark Knight'               ,'Action'   , 2008, 9);
insert into films (title, genre,release_year,score) values ('Alien'                         ,'SciFi'    , 1979, 9);
insert into films (title, genre,release_year,score) values ('Total Recall'                  ,'SciFi'    , 1990, 8);
insert into films (title, genre,release_year,score) values ('The Matrix'                    ,'SciFi'    , 1999, 8);
insert into films (title, genre,release_year,score) values ('The Matrix Resurrections'      ,'SciFi'    , 2021, 5);
insert into films (title, genre,release_year,score) values ('The Matrix Reloaded'           ,'SciFi'    , 2003, 6);
insert into films (title, genre,release_year,score) values ('The Hunt for Red October'      ,'Thriller' , 1990, 7);
insert into films (title, genre,release_year,score) values ('Misery'                        ,'Thriller' , 1990, 7);
insert into films (title, genre,release_year,score) values ('The Power Of The Dog'          ,'Western'  , 2021, 6);
insert into films (title, genre,release_year,score) values ('Hell or High Water'            ,'Western'  , 2016, 8);
insert into films (title, genre,release_year,score) values ('The Good the Bad and the Ugly' ,'Western'  , 1966, 9);
insert into films (title, genre,release_year,score) values ('Unforgiven'                    ,'Western'  , 1992, 7);

--1
select * from films;
--2
select * from films
order by score desc;
--3
select * from films
order by release_year asc;
--4
select * from films
order by release_year;
--5
select * from films
where score >= 8;
--6
select * from films
where score <= 7;
--7
select * from films
where release_year = 1990;
--8
select * from films
where release_year<2000;
--9
select * from films
where release_year>1990;
--10
select * from films
where release_year between 1990 and 1999;
--11
select * from films
where genre like 'SciFi';
--12
select * from films
where genre not like 'SciFi';
--13
select * from films
where genre like 'Western' and release_year < 2000;
--14
select * from films
where title like '%Matrix%';


--ext 1
--1
select avg(score) from films;
--2
select count(*) from films;
--3
select avg(score) from films
group by genre;
--


--ex2
--directors table
create table directors (id serial, name varchar(30), primary key(id), unique(name));
insert into directors (name) values ('Walt Disney');
insert into directors (name) values ('Spilberg');
insert into directors (name) values ('Johny Sins');
insert into directors (name) values ('Borat');
insert into directors (name) values ('Rafa');
--alter films table
alter table films add column directorId int;
--fill with data from directors
update films
set directorId = (
select id from directors
limit 1
)
where genre Like 'Western';

update films
set directorId = (
select id from directors
limit 1
)
where genre Like 'SciFi';

update films
set directorId = (
select id from directors
limit 1 offset 2
)
where directorId is null;
-- show director names
select films.id, title,genre,release_year, score, directors.name from films
inner join directors on films.directorId = directors.id;


--ext 3
select name, count(films.id) as directed_movie_count from films
join directors on films.directorId = directors.id
group by directorId, name;

