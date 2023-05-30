extension 2

create table if not exists directors (
id serial primary key,
name varchar(50)
);

insert into directors (name)
values
('Steven Spielberg'),
('Martin Scorsese'),
('Ridley Scott'),
('John Woo');

ALTER TABLE films
ADD directorId integer;

update films set directorId = 1 where id = 1;

insert into films (id, directorId)
values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 3),
(6, 2),
(7, 4),
(8, 1),
(9, 2),
(10, 3),
(11, 4),
(12, 3),
(13, 2),
(14,4);

--select *, directors.name
--from films
--inner join directors on films.directorId = directors.id;

--select films.title, directors.name
--from films
--inner join directors on films.directorId = directors.id;