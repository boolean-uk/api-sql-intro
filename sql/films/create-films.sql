DROP TABLE IF EXISTS films;

CREATE TABLE films(
  id SERIAL PRIMARY KEY,
  title varchar(255) NOT null,
  genre varchar(255) NOT null,
  release_year integer NOT null,
  score integer CHECK (score >= 0 AND score <= 10),

  UNIQUE(title)
);
