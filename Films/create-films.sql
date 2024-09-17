CREATE TABLE films(
    id serial primary key,
    title varchar not null,
    genre varchar not null,
    release_year varchar not null,
    score varchar not null
)