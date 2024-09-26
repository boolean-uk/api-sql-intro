CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
  year_birth INT,
  year_death INT
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title varchar(255) NOT NULL,
  author_id INT
);

INSERT INTO authors (name, year_birth, year_death) 
VALUES ('J.R.R. Tolkein', 1892, 1973), ('Roald Dahl', 1916, 1990), ('William Shakespeare', 1564, 1616);

INSERT INTO books (title , author_id) VALUES ('The Hobbit', 1), ('Lord of the Rings Trilogy', 1), ('James and the Giant Peach', 2), ('Fantastic Mr. Fox', 2), ('King Lear', 3), ('Romeo & Juliet', 3);