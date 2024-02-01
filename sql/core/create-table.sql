CREATE TABLE IF NOT EXISTS films (
 id SERIAL PRIMARY KEY,
 title TEXT NOT NULL,
 genre TEXT NOT NULL,
 release_year int NOT NULL,
 score int NOT NULL,
 UNIQUE(title)
);