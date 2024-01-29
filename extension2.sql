CREATE TABLE directors(
	id serial primary key,
	first_name varchar(50),
	last_name varchar(50)
)

INSERT INTO directors (first_name, last_name) VALUES
	('Christopher','Nolan'),
	('Krystlow Kryslowski',''),
	('Brothers','Coen'),
	('Wim','Wenders'),
	('Chandler','Bing')

ALTER TABLE films ADD COLUMN directorId int
ALTER TABLE films ADD FOREIGN KEY (directorId) REFERENCES directors(id)

UPDATE films SET directorid = 1 WHERE film_id >= 0 AND film_id < 4
UPDATE films SET directorid = 2 WHERE film_id >= 4 AND film_id < 6
UPDATE films SET directorid = 3 WHERE film_id > 6 AND film_id < 8
UPDATE films SET directorid = 4 WHERE film_id > 8 AND film_id < 11
UPDATE films SET directorid = 5 WHERE film_id > 11 AND film_id < 15

SELECT * FROM films FULL OUTER JOIN directors ON films.directorid = directors.id