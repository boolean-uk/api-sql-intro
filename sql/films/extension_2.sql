-- Create directors table
CREATE TABLE directors (
id SERIAL PRIMARY KEY,
name VARCHAR(55) NOT NULL
)

-- Add names
INSERT INTO directors (name) VALUES 
    ('John Doe'),
    ('Jason Millar'),
    ('Steven Spielberg'),
    ('John Doe'),
    ('Jason Millar'),
    ('Steven Spielberg'),
    ('John Doe'),
    ('Jason Millar'),
    ('Steven Spielberg'),
    ('John Doe'),
    ('Jason Millar'),
    ('Steven Spielberg'),
    ('John Doe'),
    ('Jason Millar'),
    ('Steven Spielberg'),
    ('John Doe'),
    ('Jason Millar'),
    ('Steven Spielberg'),

-- Update films table to add column director_id
UPDATE films SET directors_id = 2 WHERE id = 2;
UPDATE films SET directors_id = 3 WHERE id = 3;
UPDATE films SET directors_id = 4 WHERE id = 4;
UPDATE films SET directors_id = 5 WHERE id = 5;
UPDATE films SET directors_id = 6 WHERE id = 6;
UPDATE films SET directors_id = 7 WHERE id = 7;
UPDATE films SET directors_id = 8 WHERE id = 8;
UPDATE films SET directors_id = 9 WHERE id = 9;
UPDATE films SET directors_id = 10 WHERE id = 10;
UPDATE films SET directors_id = 11 WHERE id = 11;
UPDATE films SET directors_id = 11 WHERE id = 11;
UPDATE films SET directors_id = 12 WHERE id = 12;
UPDATE films SET directors_id = 13 WHERE id = 13;
UPDATE films SET directors_id = 14 WHERE id = 14;
UPDATE films SET directors_id = 15 WHERE id = 15;
UPDATE films SET directors_id = 16 WHERE id = 16;
UPDATE films SET directors_id = 17 WHERE id = 17;
UPDATE films SET directors_id = 18 WHERE id = 18;

-- Using a SQL JOIN, write a SELECT statement that returns a list of films with their director.
SELECT films.title, films.genre, films.release_year, films.score, directors.name AS director
FROM films
JOIN directors ON films.directors_id = directors.id;
