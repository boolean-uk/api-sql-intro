CREATE TABLE directors(
 id serial primary key,
 name varchar(80) not null
);

CREATE TABLE films(
  id serial primary key,
  title varchar(80) not null,
  genre varchar(50),
  release_year INTEGER,
  score INTEGER,
  director_id INTEGER,
  foreign key (director_id) references directors(id),
  unique(title)
);