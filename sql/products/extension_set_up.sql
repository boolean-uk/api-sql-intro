CREATE TABLE IF NOT EXISTS films (
  id serial primary key,
  title text,
  genre text,
  release_year integer,
  score integer,
  directorId integer,
  unique(title)
);

CREATE TABLE IF NOT EXISTS directors(
  id serial PRIMARY KEY,
  name TEXT,
  unique(name)
);
