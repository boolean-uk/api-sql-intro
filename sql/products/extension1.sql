-- Avarage rating
SELECT AVG(score) from films;

-- Count
SELECT COUNT(*) from films;

-- Avg rating by genre
SELECT genre, AVG(score) from films GROUP BY genre;
