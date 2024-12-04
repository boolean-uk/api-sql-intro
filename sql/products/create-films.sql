CREATE TABLE films(
filmID SERIAL PRIMARY KEY,
title TEXT,
genre TEXT,
year INT,
score INT,
UNIQUE(title));
