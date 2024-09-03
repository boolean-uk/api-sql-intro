Write SQL SELECT statements to return films matching the below criteria:

# Standard Criteria
## All films

```sql
SELECT * FROM films;
```
## All films ordered by rating descending

```sql
SELECT * From films ORDER BY score DESC;
```
## All films ordered by release year ascending

```sql
SELECT * From films ORDER BY score ASC;
```
## All films with a rating of 8 or higher

```sql
SELECT * From films WHERE score >= 8;
```
## All films with a rating of 7 or lower

```sql
SELECT * From films WHERE score <= 7;
```
## Films released in 1990

```sql
SELECT * From films WHERE release_year = 1990;
```
## Films released before 2000

```sql
SELECT * From films WHERE release_year < 2000;
```
## Films released after 1990

```sql
SELECT * From films WHERE release_year > 1990;
```
## Films released between 1990 and 1999

```sql
SELECT * From films WHERE release_year BETWEEN 1990 AND 1999;
```
## Films with the genre of "SciFi"

```sql
SELECT * From films WHERE genre LIKE 'SciFi';
```
## Films with the genre of "Western" or "SciFi"

```sql
SELECT * From films WHERE genre LIKE 'SciFi' or genre LIKE 'Western';
```
## Films with any genre apart from "SciFi"

```sql
SELECT * From films WHERE genre NOT LIKE 'SciFi';
```
## Films with the genre of "Western" released before 2000

```sql
SELECT * From films WHERE genre LIKE 'Western' and release_year < 2000;
```
## Films that have the word "Matrix" in their title

```sql
SELECT * From films WHERE title LIKE '%Matrix%';
```

For the last query, you will need to research the LIKE keyword in postgres.

# Extension 1

## Return the average film rating

```sql
SELECT AVG(score) FROM films;
```
## Return the total number of films

```sql
SELECT COUNT(*) FROM films;
```
## Return the average film rating by genre

```sql
SELECT genre, AVG(score) FROM films GROUP BY genre;
```

# Extension 2
## Add a column for directors in movies as a FK by using JOIN
```sql
SELECT *
FROM films
INNER JOIN directors ON films.directorid = directors."directorId";
```

# Extension 3
## Write a SQL SELECT statement that returns a lists of directors along with the number of films they have directed.
```sql
SELECT name, COUNT(films.directorid)
FROM films
INNER JOIN directors ON films.directorid = directors."directorId"
GROUP BY (name);
```