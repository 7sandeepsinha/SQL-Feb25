-- > <= >=
SELECT * FROM sakila.film;
SELECT * FROM sakila.film WHERE rental_duration > 3;
SELECT title, description, rental_duration FROM sakila.film WHERE rental_duration > 3;
SELECT title, description, rental_duration FROM sakila.film WHERE rental_duration > 3 AND rental_duration < 7;

-- BETWEEN [ inclusive >= and <= ]
SELECT title, description, rental_duration FROM sakila.film WHERE rental_duration BETWEEN 4 AND 6;
SELECT title, description FROM sakila.film;
-- LIKE
-- Find all the movies which have 'action' keyword present in the description
SELECT title, description FROM sakila.film WHERE description LIKE '%ACTION%';
SELECT title, description FROM sakila.film WHERE description LIKE '___ACTION%';

-- "a_works_with_sanjay"
-- "_sanjay%" -> _sanjay______________
-- "  Hello this is "Sandeep" "
-- " Hello this is \"Sandeep\"  "
-- "\_sanjay%

-- IS NULL
SELECT * FROM sakila.film WHERE description IS NULL; -- matches with all empty/null descriptions
SELECT * FROM sakila.film WHERE description IS NOT NULL;
-- "" is not empty/null

-- String str = null;   str.size() -- null pointer exception
-- String str = "";     str.size -- 0 -- blank string

SELECT * FROM sakila.film ORDER BY release_year; -- default is ascending order
SELECT * FROM sakila.film ORDER BY release_year DESC; -- descending order

-- SELECT * FROM table ORDER BY col1, col2;
-- print all rows and columns sort by col1[1st] then col2[2nd]
SELECT title, release_year, rental_duration FROM sakila.film ORDER BY release_year DESC, rental_duration;
-- prints title release_year rental_duration from film, sorted by release_year in descending then rental_duration in ascending

SELECT DISTINCT title, release_year, rental_duration FROM sakila.film ORDER BY release_year DESC, rental_duration;

-- LIMIT

SELECT * FROM sakila.film LIMIT 10; -- returns top 10 results
SELECT * FROM sakila.film LIMIT 10 OFFSET 10; -- returns top 10 results starting from 11th,

-- SELECT * FROM sakila.film LIMIT X OFFSET Y -- returns results from Y+1 to Y+1+X
-- SELECT * FROM sakila.film LIMIT 15 OFFSET 12 -- returns results from 13 to 28

SELECT title, release_year, rental_duration FROM sakila.film ORDER BY release_year DESC, rental_duration LIMIT 15;
SELECT title, release_year, rental_duration FROM sakila.film ORDER BY release_year DESC, rental_duration LIMIT 15 OFFSET 10;

-- CRUD
-- Create -> adding rows in a table
-- Read -> reading table, sorting, selecting rows, selecting columns, limitting output, filter rows with pattern matching
-- Update

-- UPDATE table_name SET col1=val, col2=val, col3=val.... WHERE conditions;
SELECT film_id, title, release_year FROM sakila.film WHERE film_id = 20;
UPDATE sakila.film SET release_year = 2025 WHERE film_id = 20;
UPDATE sakila.film SET release_year = 2030, title = 'SPIDERMAN CHALA BIHAR' WHERE film_id = 20;


SELECT * FROM sakila.film;
UPDATE sakila.film SET rental_rate = 10.99;

-- DELETE
-- DELETE FROM tableName WHERE conditions;
SELECT * FROM sakila.filmTitles WHERE film_id = 15;
DELETE FROM sakila.filmTitles WHERE film_id = 15;

DELETE FROM sakila.filmTitles;

DELETE FROM sakila.film WHERE film_id = 10;