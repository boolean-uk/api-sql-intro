INSERT INTO directors(name) VALUES ('Fnatte'), ('Kalle'), ('Knatte');

INSERT INTO films(title, genre, release_year, score, directorId) VALUES 
  ('The Shawshank Redemption', 'Drama', 1994, 9, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('The Godfather', 'Crime', 1972, 9, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('The Dark Knight', 'Action', 2008, 9, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('Alien', 'SciFi', 1979, 9, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('Total Recall', 'SciFi', 1990, 8, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('The Matrix', 'SciFi', 1999, 8, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('The Matrix Resurrections', 'SciFi', 2021, 5, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('The Matrix Reloaded', 'SciFi', 2003, 6, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('The Hunt for Red October', 'Thriller', 1990, 7, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('Misery', 'Thriller', 1990, 7, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('The Power Of The Dog', 'Western', 2021, 6, (SELECT id FROM directors WHERE name = 'Fnatte')),
  ('Hell or High Water', 'Western', 2016, 8, (SELECT id FROM directors WHERE name = 'Knatte')),
  ('The Good the Bad and the Ugly', 'Western', 1966, 9, (SELECT id FROM directors WHERE name = 'Knatte')),
  ('Unforgiven', 'Western', 1992, 7, (SELECT id FROM directors WHERE name = 'Kalle'));
