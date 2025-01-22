	
SELECT * FROM Films;

SELECT * FROM Films ORDER BY Score DESC;

SELECT * FROM Films ORDER BY releaseYear ASC;

SELECT * FROM Films WHERE Score >= 8;

SELECT * FROM Films WHERE Score <=7;

SELECT * FROM Films WHERE releaseYear = 1990;

SELECT * FROM Films WHERE releaseYear >= 2000;

SELECT * FROM Films WHERE releaseYear > 1990;

SELECT * FROM Films WHERE releaseYear <= 1999 AND releaseYear >= 1990;

SELECT * FROM Films WHERE Genre = 'SciFi';

SELECT * FROM Films WHERE Genre = 'SciFi' OR Genre = 'Western';

SELECT * FROM Films WHERE Genre != 'SciFi';

SELECT * FROM Films WHERE Genre = 'Western' AND releaseYear<2000;

SELECT * FROM  Films WHERE Title LIKE '%Matrix%';
