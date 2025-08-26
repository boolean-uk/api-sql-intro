create table films (
    film_id SERIAL primary key,
    title varchar(255) not null unique,
    genre varchar(255) not null,
    release_year INTEGER not null,
    score integer not null check (score between 0 and 10)
);