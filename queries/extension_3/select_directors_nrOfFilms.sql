


SELECT  d.name, COUNT(f.*) FROM directors d INNER JOIN newfilms f ON f.directorid = d.directorid GROUP BY f.directorid, d.name