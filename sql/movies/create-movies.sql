create table films(
 id serial primary key,
 title varchar(255) not null unique,
 genre varchar(255) not null,
 release_year int not null,
 score int not null,
 director int references directors(id) not null
);

create table directors(
  id serial primary key,
  name varchar(255) not null
);
