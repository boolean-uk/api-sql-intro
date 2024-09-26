CREATE TABLE films(
 id serial primary key not null,
 title varchar(255) not null,
 directorId int not null,
 genre varchar(255),
 release_year int,
 score int,
 unique(title)
)