-- INSERT INTO dbName.tableName (col1, col2, col3, col4.....) VALUES (val1, val2, val3, val4 .....);

INSERT INTO sakila.film
    (title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features)
VALUES
    ('Avengers Infinity War', 'Best movie from Marvel', 2019, 1, 1, 4, 2.99, 120, 10.99, 'G', 'Behind the Scenes');

INSERT INTO sakila.film
    (title, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features)
VALUES
    ('Avengers Infinity War 2', 2019, 1, 1, 4, 2.99, 120, 10.99, 'G', 'Behind the Scenes');

-- INSERT INTO dbName.tableName (col1, col2, col3, col4.....) VALUES (val1, val2, val3, val4 .....);
-- qoutation -> column names dont need any qoutes
-- data/values -> only the strings need ' '
-- ENUM -> set of constants
-- columns mentioned in the query, need to have respective values
-- all the columns of the table, dont need to be mentioned in the query
-- when we want to enter values for all the columns of the table, then we dont need to mention the column names.
--  Query -> INSERT INTO dbName.tableName VALUES (val1, val2, val3, val4 .....);

-- SELECT * FROM dbName.tableName;
SELECT * FROM sakila.film;
-- show all rows and all columns

-- SELECT col1, col2, col3... FROM dbName.tableName;
SELECT film.film_id, film.title, film.description from sakila.film;
-- shows only the output for the columns mentioned in the query


-- SQL IS CASE INSENSITIVE
select film_id, FILM.title, FILM.description from sakila.film;
SeLeCt FILM.title, Film_ID, FILM.description from sakila.film;

-- Convention -> SQL syntax in CAPITAL, tableName/dbName/columnName -> small

-- DISTINCT -- no duplicates
SELECT DISTINCT film.rating FROM sakila.film;
SELECT DISTINCT film.rating, film.release_year FROM sakila.film;

-- PRINT CONSTANTS
SELECT 'HELLO WORLD';


-- READ FROM ONE TABLE AND INSERT INTO ANOTHER
-- INSERT INTO dbName.tableName (col1, col2, col3, col4.....)
-- SELECT col1, val2, col3, col4 from dbName.sourceTableName;

-- INSERT INTO film_copy (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features)
-- SELECT film_title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features
-- FROM film;


-- WHERE
SELECT * FROM sakila.film WHERE rating = 'PG';
SELECT title, description, rating FROM sakila.film WHERE rating = 'PG';
-- ---- filter on columns                                -- filter on rows
-- conditions in WHERE
SELECT title, description, rating, release_year FROM film WHERE rating = 'PG-13' AND release_year = 2006;
SELECT title, description, rating, rental_duration FROM film WHERE rating = 'PG-13' OR rental_duration = 4;
SELECT title, description, rating FROM film WHERE NOT rating = 'PG-13';


-- IN
SELECT film.title, film.description, film.rating FROM sakila.film WHERE rating = 'PG-13' OR rating = 'R' OR rating = 'PG';
-- the above and the below query will give the same output. IN condition helps to write multiple ORs together, in a easier/cleaner way.
SELECT film.title, film.description, film.rating FROM sakila.film WHERE rating IN ('PG-13', 'R', 'PG');
SELECT film.title, film.description, film.rating FROM sakila.film WHERE rating NOT IN ('PG-13', 'R', 'PG');