CREATE TABLE IF NOT EXISTS films(
id SERIAL PRIMARY KEY,
title VARCHAR(50) NOT NULL,
genre VARCHAR(50) NOT NULL,
release_year INT,
score INT,
UNIQUE (title)
)