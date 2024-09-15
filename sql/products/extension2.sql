-- Create a new directors table.
CREATE TABLE directors(
 id SERIAL PRIMARY KEY,
 name varchar(20) not null
);

-- Recreate your films table and add a directorId column.

ALTER TABLE films
ADD directorId INT REFERENCES directors(id);


-- Insert a few director records (the data does not need to be real, you can just make directors up).
INSERT INTO directors (name) VALUES ('John'), ('Jane'), ('Jack');

-- Re-insert your film data, updating each film with have a directorId.
UPDATE films SET directorId = 1 WHERE release_date > 2020;
UPDATE films SET directorId = 2 WHERE release_date BETWEEN 2000 AND 2020;
UPDATE films SET directorId = 3 WHERE release_date < 2000;


--  Using a SQL JOIN, write a SELECT statement that returns a list of films with their director
SELECT films.title, directors.name FROM films JOIN directors ON films.directorId = directors.id;