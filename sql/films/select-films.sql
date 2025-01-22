SELECT * FROM films;
SELECT * FROM films ORDER BY score DESC;
SELECT * FROM films ORDER BY released ASC;
SELECT * FROM films WHERE score > 8;
SELECT * FROM films WHERE score < 7;
SELECT * FROM films WHERE released = 1990;
SELECT * FROM films WHERE released < 2000;
SELECT * FROM films WHERE released > 1990;
SELECT * FROM films WHERE released > 1990 AND released < 2000;
SELECT * FROM films WHERE genre = 'SciFi';
SELECT * FROM films WHERE genre = 'SciFi' OR genre = 'Western';
SELECT * FROM films WHERE NOT genre = 'SciFi';
SELECT * FROM films WHERE genre = 'Western' AND released < 2000;
SELECT * FROM films WHERE title LIKE '%Matrix%';

-- Extention 1

SELECT AVG(score) FROM films; 
SELECT COUNT(*) FROM films;
SELECT genre, AVG(score) FROM films GROUP BY genre;
