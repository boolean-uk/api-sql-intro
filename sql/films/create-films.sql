CREATE TABLE films(
    id SERIAL PRIMARY KEY,
    title TEXT UNIQUE NOT NULL,
    genre TEXT NOT NULL,
    year INT NOT NULL,
    rating INT NOT NULL
)