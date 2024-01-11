CREATE TABLE
    IF NOT EXISTS movies (
        id serial PRIMARY key
      , title TEXT UNIQUE
      , genre TEXT
      , release_year INTEGER
      , score INTEGER
    )