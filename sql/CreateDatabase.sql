CREATE TABLE films(
 id serial primary KEY,
 title VARCHAR(255) not null,
 genre VARCHAR(255),
 release_year INTEGER,
 score INTEGER,
 UNIQUE(title)
)