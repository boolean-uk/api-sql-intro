CREATE TABLE films(
    id serial primary key,
    title varchar(255) not null,
    genre varchar(255) not null,
    releaseYear int not null,
    score int,
    unique(title)
)
