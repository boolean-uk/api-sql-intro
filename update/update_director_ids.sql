UPDATE movies
SET director_id = 1 WHERE id = 1;
UPDATE movies
SET director_id = 2 WHERE id = 2;
UPDATE movies
SET director_id = 3 WHERE id = 3;
UPDATE movies
SET director_id = 4 WHERE id = 4;
UPDATE movies
SET director_id = 5 WHERE id = 5;
UPDATE movies
SET director_id = 6 WHERE id IN (6, 7, 8);
UPDATE movies
SET director_id = 7 WHERE id = 9;
UPDATE movies
SET director_id = 8 WHERE id = 10;
UPDATE movies
SET director_id = 9 WHERE id = 11;
UPDATE movies
SET director_id = 10 WHERE id = 12;
UPDATE movies
SET director_id = 11 WHERE id = 13;
UPDATE movies
SET director_id = 12 WHERE id = 14;

SELECT * from movies;