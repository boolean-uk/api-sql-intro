/* All films */
select * from films;

/* All films ordered by rating descending */
select * from films
order by score desc;

/* All films ordered by release year ascending */
select * from films
order by releaseYear; 

/* All films with a rating of 8 or higher */
select * from films
where score >= 8;

/* All films with a rating of 7 or lower */
select * from films
where score <= 7;

/* films released in 1990 */
select * from films
where releaseYear = 1990;

/* films released before 2000 */
select * from films
where releaseYear < 2000;

/* films released after 1990 */
select * from films
where releaseYear > 1990;

/* films released between 1990 and 1999 */
select * from films
where releaseYear > 1990 and releaseYear < 1999;

/* films with the genre of "SciFi" */
select * from films
where genre = 'SciFi';

/* films with the genre of "Western" or "SciFi" */
select * from films
where genre = 'SciFi' or genre = 'Western';

/* films with any genre apart from "SciFi" */
select * from films
where genre != 'SciFi';

/* films with the genre of "Western" released before 2000 */
select * from films
where genre = 'Western' and releaseYear < 2000;

/* films that have the word "Matrix" in their title */
select * from films
where title like '%Matrix%';
