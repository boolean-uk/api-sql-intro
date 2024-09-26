-- Extension 2
-- Create a new `directors` table. Each director should have a name and a unique director id.
CREATE TABLE directors (
	id serial PRIMARY KEY,
	name VARCHAR(255) NOT NULL
);

-- Recreate your films table and add a `directorId` column.
ALTER TABLE films ADD COLUMN directorID INT;

-- Insert a few director records (the data does not need to be real, you can just make directors up).
INSERT INTO directors (name) VALUES
('director1'), ('director2'), ('director3'), ('director4');

-- Re-insert your film data, updating each film with have a `directorId`.
UPDATE films SET directorId=1 WHERE id <= 4;
UPDATE films SET directorId=2 WHERE id > 4 AND id <= 8;
UPDATE films SET directorId=3 WHERE id > 8 AND id <= 12;
UPDATE films SET directorId=4 WHERE id > 12;

-- Using a SQL `JOIN`, write a SELECT statement that returns a list of films with their director.
SELECT films.title, films.genre, films.release_year, films.score, directors.name
FROM films
INNER JOIN directors
ON films.directorId = directors.id;
