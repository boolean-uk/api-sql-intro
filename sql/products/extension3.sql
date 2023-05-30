SELECT tb2.name, COUNT(*) AS films FROM films tb1 
JOIN directors tb2 ON tb1.director_id = tb2.id 
GROUP BY tb2.name