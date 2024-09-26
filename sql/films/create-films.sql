CREATE TABLE films(
 id serial primary key,
 title varchar(80) not null,
 genre varchar(50),
 release_year INTEGER,
 score INTEGER,
 unique(title)
)