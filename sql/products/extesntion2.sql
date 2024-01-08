--you can comment on the rest to run one by one
-- Creating directors table
CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);

-- modifiying 
ALTER TABLE films
ADD COLUMN director_id INTEGER,
ADD CONSTRAINT fk_director
    FOREIGN KEY (director_id)
    REFERENCES directors (director_id);

-- Inserting a few director records
INSERT INTO directors (name) VALUES
('Christopher Nolan'),
('Quentin Tarantino'),
('Steven Spielberg');


-- Assuming director_id is 1 for Christopher Nolan, 2 for Quentin Tarantino, and 3 for Steven Spielberg

UPDATE films SET director_id = 1 WHERE title = 'The Dark Knight';
UPDATE films SET director_id = 2 WHERE title = 'Pulp Fiction';
UPDATE films SET director_id = 3 WHERE title = 'Jurassic Park';
