create table directors (
	director_id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE films_dk (
    film_id SERIAL PRIMARY KEY, 
    title VARCHAR(255) UNIQUE,   
    genre VARCHAR(50),
    release_year INTEGER,
    score INTEGER,
	director_id INTEGER,
	foreign key (director_id) references directors(director_id)
);


-- Insert directors
INSERT INTO directors (name) VALUES
('John Doe'),
('Jane Smith'),
('Alice Brown');

-- Insert films
INSERT INTO films_dk (title, genre, release_year, score, director_id) VALUES
('The Phantom Realm', 'Action', 2022, 87, 1),
('Echoes of Tomorrow', 'Sci-Fi', 2021, 91, 1),
('Lost in Shadows', 'Drama', 2020, 82, 2),
('City of Dreams', 'Romance', 2019, 78, 2),
('A Silent Whisper', 'Thriller', 2023, 85, 3),
('Sunset Boulevard', 'Mystery', 2022, 88, 3),
('Into the Abyss', 'Action', 2021, 79, 1),
('A Dance of Fire', 'Fantasy', 2020, 80, 2),
('Beyond the Horizon', 'Adventure', 2023, 90, 1),
('The Last Stand', 'War', 2022, 84, 3);


select films_dk.title, directors.name from films_dk inner join directors on films_dk.director_id=directors.director_id; 
