SELECT * from films;

SELECT * FROM films ORDER By Score DESC;

SELECT * FROM films WHERE Score >= 8;

SELECT * FROM films WHERE Score <= 7;

SELECT * FROM films WHERE Year == 1990;

SELECT * FROM films WHERE Year < 2000;

SELECT * FROM films WHERE Year > 1990;

SELECT * FROM films WHERE Year > 1990;

SELECT * FROM films WHERE Year > 1990 AND Year < 1999;

SELECT * FROM films WHERE genre LIKE "scifi";

SELECT * FROM films WHERE genre LIKE "scifi" OR genre LIKE "WESTERN";

SELECT * FROM films WHERE genre NOT LIKE "scifi";

SELECT * FROM films WHERE genre LIKE "WESTERN" AND Year < 2000;

SELECT * FROM films WHERE Title LIKE "%matrix%";

