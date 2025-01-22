SELECT AVG(Score) from Films;

SELECT COUNT(*) FROM Films;
 
SELECT DISTINCT AVG(Score) as score, Genre FROM Films GROUP BY Genre ORDER BY score DESC ;
