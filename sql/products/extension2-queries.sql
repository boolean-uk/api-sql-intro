
-- director table
CREATE TABLE IF NOT EXISTS directors (
id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR(64) NULL UNIQUE,
);

-- film table
CREATE TABLE IF NOT EXISTS films (
id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
directorsId integer NOT NULL,
title VARCHAR(128) NOT NULL UNIQUE,
genre VARCHAR(64) NOT NULL,
release_year integer NOT NULL,
rating integer NOT NULL,
CONSTRAINT fk_director FOREIGN KEY (directorsId) REFERENCES directors(id)
);


-- Insert sample data into users table
INSERT INTO directors (name)
VALUES
  ('Steven Spielberg'),
  ('James Cameron'),
  ('Michael Scorcese');

-- Insert sample data into users table
INSERT INTO films (directorsId,title, genre, release_year, rating)
VALUES
  (1,'The Shawshank Redemption', 'Drama', 1994, 9),
  (2,'The Godfather', 'Crime', 1972, 9),
  (3,'The Dark Knight', 'Action', 2008, 9),
  (3,'Alien', 'SciFi', 1979, 9),
  (2,'Total Recall', 'SciFi', 1990, 8),
  (3,'The Matrix', 'SciFi', 1999, 8),
  (1,'The Matrix Resurrections', 'SciFi', 2021, 5),
  (1,'The Matrix Reloaded', 'SciFi', 2003, 6),
  (1,'The Hunt for Red October', 'Thriller', 1990, 7),
  (2,'Misery', 'Thriller', 1990, 7),
  (3,'The Power Of The Dog', 'Western', 2021, 6),
  (2,'Hell or High Water', 'Western', 2016, 8),
  (2,'The Good the Bad and the Ugly', 'Western', 1966, 9),
  (1,'Unforgiven', 'Western', 1992, 7);

  select f.title as movie_title, f.directorsId as directors_id, d.name as directors_name
  from films f
  join directors d
  on f.directorsId = d.id
