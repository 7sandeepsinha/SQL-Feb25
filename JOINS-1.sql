-- actorId filmName
SELECT film_actor.actor_id, film.title
FROM sakila.film_actor
INNER JOIN  sakila.film
ON film_actor.film_id = film.film_id;

-- alias
SELECT fa.actor_id, f.title
FROM sakila.film_actor fa
INNER JOIN  sakila.film f
ON fa.film_id = f.film_id;

-- as

SELECT fa.actor_id as 'ActorId', f.title as 'MovieName'
FROM sakila.film_actor fa
INNER JOIN  sakila.film f
ON fa.film_id = f.film_id;

-- no need for 'as' keyword for table name aliases
-- 'as' keyword is used for defining column names in the output

-- category table -> categoryId Name


-- film -> filmId title
-- film_category -> filmId categoryId

-- O/P -- filmName, categoryId
SELECT f.film_id, f.title, fc.film_id, fc.category_id
FROM sakila.film f
JOIN sakila.film_category fc
ON f.film_id = fc.film_id;

-- f.filmId, title, fc.filmId, category_ID
-- category category_ID, categoryName

SELECT f.title, c.name
FROM sakila.film f
JOIN sakila.film_category fc
ON f.film_id = fc.film_id
JOIN sakila.category c
ON fc.category_id = c.category_id;


-- Student -> studentId | name | psp
-- Company -> companyId | name
-- student_company_offers -> studentId | companyId

-- output -- studentName | companyName

-- SELECT
--     FROM students s
--     JOIN student_company_offers sco
-- ON s.studentId = sco.studentId;

-- JOIN table - studentId | name | psp | studentId | companyId

-- SELECT
--     FROM students s
--     JOIN student_company_offers sco
-- ON s.studentId = sco.studentId
-- JOIN company c
-- ON sco.companyId = c.companyId;

-- JOIN table - s.studentId | s.name | s.psp | sco.studentId | sco.companyId | c.companyId | c.name

-- SELECT s.name, c.name
--     FROM students s
--     JOIN student_company_offers sco
-- ON s.studentId = sco.studentId
--     JOIN company c
-- ON sco.companyId = c.companyId;

-- break -> 8 mins -- 8:12 AM