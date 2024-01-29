new directors table: 

create table directors(
	id serial,
	name varchar (50),
	PRIMARY key(id)
);
--------------------------------

recreating the films table: 

Create table films2(
	id serial,
	directorId INTEGER,
	title varchar (100),
	genre VARCHAR (50),
	release_year INTEGER,
	score INTEGER,
	primary key (id),
	FOREIGN key (directorId) REFERENCES directors(id)
);
--------------------------------

inserting director data: 

insert into directors(name)
VALUES
('steven'),
('jenny');
--------------------------------

re-inserting filmdata with a directory-id column;

insert into films2 (directorId, title, genre, release_year, score)
VALUES

(1, 'The Dark Knight', 'Action', 2008, 9),
(1, 'Alien', 'SciFi', 1979, 9),
(2, 'Total Recall', 'SciFi', 1990, 8),
(2, 'The Matrix', 'SciFi', 1999, 8);
--------------------------------

Using a SQL JOIN, write a SELECT statement that returns a list of films with their director:

select * from films2
inner join directors on films2.directorId = directors.id;