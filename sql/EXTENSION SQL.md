
# Extension 1

1. **Return average film rating**

sql: `SELECT AVG(score) AS avg_score from films;`

2.  **Return the total number of films rating** 
 
sql: `SELECT COUNT(*) AS avg_score from films;`   


3.  **Return the average film rating by genre**  

sql:
 `SELECT genre, AVG(Score) AS avg_score from films GROUP BY genre`


# Extension 2

sql:

 ```sql
 SELECT f.title, d.name FROM films as f JOIN directors as d ON f.director_id = d.id
 ```

# Extension 3

sql: 
 ```sql
SELECT COUNT(f), d.name FROM films as f JOIN directors as d ON f.director_id = d.id GROUP BY d.name`= d.id
 ```