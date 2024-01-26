### CORE
1. All films:  
   SELECT * FROM films;
   
2. All films ordered by rating descending:
   
    SELECT * FROM films ORDER BY score DESC;
   
3. All films ordered by release year ascending:
   
   SELECT * FROM films ORDERBY release_year ASC;
   
4. All films with a rating of 8 or higher:
   
    SELECT * FROM FILMS WHERE score >= 8;
   
5. All films with a rating of 7 or lower:
   
    SELECT * FROM films WHERE score <= 7;
   
6. films released in 1990:
   
   SELECT * FROM films WHERE release_year = 1990;
   
7. films released before 2000:
    
   SELECT * FROM films WHERE release_year < 2000;
   
8. films released after 1990:
    
   SELECT * FROM films WHERE release_year > 1990;
   
9.  films released between 1990 and 1999:
    
    SELECT * FROM films WHERE release_year >= 1990 AND release_year <= 1999;

10. films with the genre of "SciFi":
    
    SELECT * FROM films WHERE genre = 'SciFi';
    
11. films with the genre of "Western" or "SciFi":
    
    SELECT * FROM films WHERE genre = 'Western' OR genre = 'SciFi';
    
12. films with any genre apart from "SciFi":
    
    SELECT * FROM films WHERE genre != 'SciFi';
    
13. films with the genre of "Western" released before 2000:
    
    SELECT * FROM films WHERE genre = 'Western' AND release_year < 2000;
    
14. films that have the world "Matrix" in their title:
    
    SELECT * FROM films WHERE LOWER(title) LIKE LOWER('%Matrix%');

### EXTENSION 1
1. Return the average film rating:
   
   SELECT CAST(ROUND(AVG(score), 2) AS FLOAT) AS integer_average FROM films;

2. Return the total number of films:
   
   SELECT COUNT(title) FROM films;
   
3. Return the average film rating by genre:
   
   SELECT genre, CAST(ROUND(AVG(score), 2) AS FLOAT) AS avg_score FROM films GROUP BY genre;

### EXTENSION 2
1. join query with a list of directors and films:
   
SELECT name, title FROM directors d JOIN films f on f.director_id = d.id;

### EXTENSION 3
1. director name + amount of directed films:
   
SELECT name, COUNT(director_id) FROM directors d JOIN films f on f.director_id = d.id GROUP BY name;
