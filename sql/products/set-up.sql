CREATE TABLE IF NOT EXISTS films (
  id serial primary key,
  title text,
  genre text,
  release_year integer,
  score integer,
  unique(title)
);
