CREATE TABLE films(
 id serial primary key,
 title varchar(255) UNIQUE,
 genre varchar(50),
 release_year int,
 score int check(score BETWEEN 0 AND 10)
)