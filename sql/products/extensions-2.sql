ALTER TABLE films
ADD director_id INT;

CREATE TABLE directors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO directors (name)
  VALUES('Frank Darabont'),
  ('Francis Ford Coppola'),
  ('Christopher Nolan'),
  ('Ridley Scott'),
  ('Paul Verhoeven'),
  ('The Wachowskis'),
  ('Lana Wachowski'),
  ('John McTiernan'),
  ('Rob Reiner'),
  ('Jane Campion'),
  ('David Mackenzie'),
  ('Sergio Leone'),
  ('Clint Eastwood');

SELECT title, name from films 
JOIN directors ON directors.id = films.director_id;
