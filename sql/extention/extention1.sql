--Return the average film rating
SELECT AVG(score) FROM films;
--7.6428571428571429


--Return the total number of films
SELECT count(title) from films;
-- 14

--Return the average film rating by genre
SELECT ROUND(AVG(score), 2) as avg, genre FROM films
GROUP BY genre
ORDER BY avg DESC;

-- 9.00	Crime
-- 9.00	Drama
-- 9.00	Action
-- 7.50	Western
-- 7.20	SciFi
-- 7.00	Thriller

