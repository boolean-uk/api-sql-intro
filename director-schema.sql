-- EXTENSION 2
CREATE TABLE IF NOT EXISTS director (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO director (name) VALUES 
    ('Christopher Nolan'),
    ('Frank Darabont'),
    ('Francis Ford Coppola'),
    ('Ridley Scott'),
    ('Paul Verhoeven'),
    ('The Wachowskis'),
    ('John McTiernan'),
    ('Rob Reiner'),
    ('Jane Campion'),
    ('David Mackenzie'),
    ('Sergio Leone'),
    ('Clint Eastwood');
