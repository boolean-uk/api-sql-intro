-- EXTENSION 2
CREATE TABLE IF NOT EXISTS director (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO director (name) VALUES 
    ('Christopher Nolan'),
    ('Quentin Tarantino'),
    ('Steven Spielberg');
