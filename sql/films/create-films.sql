CREATE TABLE films(
 id serial primary key,
 title varchar(1000) unique,
 genre varchar(1000),
 released int,
 score int
 )
