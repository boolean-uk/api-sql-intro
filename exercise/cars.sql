CREATE TABLE cars (
id serial primary key, 
make varchar(255),
model varchar(255), 
year integer);

SELECT * FROM cars;

INSERT INTO cars (make, model, year) VALUES ('Ferrari', 'LaFerrari', 2016); 
INSERT INTO cars (make, model, year) VALUES ('Lamborghini', 'Huracan Super Trofeo Omologato', 2022); 
INSERT INTO cars (make, model, year) VALUES ('Porsche', 'Cayman 718 GT4 RS', 2024); 
INSERT INTO cars (make, model, year) VALUES ('McLaren', 'P1 GTR', 2016); 
INSERT INTO cars (make, model, year) VALUES ('Koeningsegg', 'Jesko', 2024); 
INSERT INTO cars (make, model, year) VALUES ('Ford', 'Focus', 2003);

SELECT * FROM cars ORDER BY make ASC; 
SELECT * FROM cars ORDER BY model DESC; 
SELECT * FROM cars ORDER BY year ASC; 

--UPDATE

-- UPDATE cars SET year = 2012  ----- will update all cars to year 2012
UPDATE cars SET year = 2012 WHERE Id=1;
UPDATE cars SET model = 'GT', year = 2022 WHERE make = 'Ford';

--DELETE

DELETE FROM cars WHERE Id = 4;	