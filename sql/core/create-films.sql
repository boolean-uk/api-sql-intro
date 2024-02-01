CREATE TABLE films (
    id serial PRIMARY KEY,
    title text NOT NULL,
    genre text NOT NULL,
    release_year int NOT NULL,
    score int NOT NULL,
    UNIQUE(title)
);









