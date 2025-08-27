
-- film table
CREATE TABLE IF NOT EXISTS films (
id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
title VARCHAR(128) NOT NULL UNIQUE,
genre VARCHAR(64) NOT NULL,
releaseYear integer NOT NULL,
score integer NOT NULL
);
