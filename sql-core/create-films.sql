CREATE TABLE IF NOT EXISTSfilms(
    id serial primary key,
    title varchar(60) not null,
    genre varchar(60) not null,
    release_year int not null,
    score int not null check(
        score between 0
        and 10
    ),
    unique(title)
);