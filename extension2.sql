CREATE TABLE directors(
  id serial PRIMARY KEY,
  name TEXT);

  INSERT INTO directors(
  name
  )
  VALUES
    ('Knud Knudsen'),
    ('Knut Rotstad'),
    ('Rudolph Jera'),
    ('Peter Dinklage');

UPDATE films
SET director_id = 1
WHERE id = 1;

UPDATE films
SET director_id = 2
WHERE id = 2;

UPDATE films
SET director_id = 3
WHERE id = 3;

UPDATE films
SET director_id = 4
WHERE id = 4;

UPDATE films
SET director_id = 1
WHERE id = 5;

UPDATE films
SET director_id = 2
WHERE id = 6;

UPDATE films
SET director_id = 3
WHERE id = 7;

UPDATE films
SET director_id = 4
WHERE id = 8;

UPDATE films
SET director_id = 1
WHERE id = 9;

UPDATE films
SET director_id = 2
WHERE id = 10;

UPDATE films
SET id = 3
WHERE id = 11;

UPDATE films
SET director_id = 4
WHERE id = 12;

UPDATE films
SET director_id = 1
WHERE id = 13;

UPDATE films
SET director_id = 2
WHERE id = 14;