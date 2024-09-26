CREATE TABLE films (
 id SERIAL PRIMARY KEY,
 title VARCHAR NOT NULL,
 genre VARCHAR(30) NOT NULL,
 release_year INT NOT NULL,
 score INT
 )