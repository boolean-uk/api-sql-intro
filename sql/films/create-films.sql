CREATE TABLE IF NOT EXISTS Movies (
    id SERIAL PRIMARY KEY,
    title TEXT,
    genre TEXT,
    year INT,
    score INT,
    UNIQUE(title)
)