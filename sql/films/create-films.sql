CREATE TABLE films(
 id SERIAL PRIMARY KEY,
 title VARCHAR(50) NOT NULL,
 genre VARCHAR(50) NOT NULL,
 release_year int NOT NULL,
 score int NOT NULL,
 unique(title)
);