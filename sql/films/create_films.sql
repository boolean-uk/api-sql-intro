CREATE TABLE films(
 id serial primary key,
 title varchar(300) NOT NULL UNIQUE,
 genre varchar(100) NOT NULL,
 release_year int,
 score int CHECK(score>=0 AND score<=10)
)