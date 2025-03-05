SELECT s.name, b.batch_name
FROM sakila.students s
JOIN sakila.batches b
ON s.batch_id = b.id;
-- INNER JOIN -- only those rows from both the table will be in output, whose join condition is fulfilled.

SELECT s.id, s.name, b.batch_name
FROM sakila.students s -- left
LEFT JOIN sakila.batches b -- right
ON s.batch_id = b.id;
-- LEFT OUTER JOIN
-- OUTPUT = right table rows whose join conditions match, as well as all the LEFT TABLE rows.

SELECT s.id, s.name, b.batch_name
FROM sakila.students s -- left
RIGHT JOIN sakila.batches b -- right
ON s.batch_id = b.id;
-- RIGHT OUTER JOIN
-- OUTPUT = left table rows whose join conditions match, as well as all the RIGHT TABLE rows.

-- SELECT s.id, s.name, b.batch_name
-- FROM sakila.students s -- left
-- FULL OUTER JOIN sakila.batches b -- right
-- ON s.batch_id = b.id;
-- FULL  OUTER JOIN --- NOT SUPPORTED BY MYSQL
-- OUTPUT = all left table rows, as well as all the RIGHT TABLE rows.

SELECT *
FROM sakila.students s
CROSS JOIN sakila.batches b;
-- CROSS JOIN -- match every row on left side with every row on right side. No join condition.


-- Syntax Sugars -- keywords that make syntax shorter
-- SELECT *
-- FROM students s
-- JOIN batches b
-- ON s.batch_id = b.batch_id;

SELECT *
FROM sakila.actor a
JOIN sakila.customer c
ON a.first_name = c.first_name;

-- USING -> syntax sugar -- column names need to be same on both the sides

-- SELECT *
-- FROM students s
-- JOIN batches b
-- USING (batch_Id);

SELECT *
FROM sakila.actor a
JOIN sakila.customer c
USING (first_name);

-- NATURAL JOIN
SELECT *
FROM sakila.actor a
NATURAL JOIN sakila.customer c;
-- matches data with matching column names
SELECT *
FROM sakila.actor a
JOIN sakila.customer c
USING(first_name, last_name, last_update);

-- IMPLICIT JOIN == CROSS JOIN
SELECT *
FROM sakila.students s, sakila.batches b; -- shorter way of writing cross join

-- JOIN WITH WHERE
SELECT *
FROM students s
JOIN batches b
ON s.batch_id = b.id;
-- ON keyword = matches the rows 1-by-1 but only forms the final table with resultant rows.

SELECT *
FROM students s
JOIN batches b
WHERE s.batch_id = b.id;


-- UNION
SELECT actor.first_name from actor
UNION
SELECT customer.first_name from customer;

-- FULL OUTER JOIN - emulating

SELECT s.id, s.name, b.batch_name
FROM sakila.students s -- left
LEFT JOIN sakila.batches b -- right
ON s.batch_id = b.id
UNION
SELECT s.id, s.name, b.batch_name
FROM sakila.students s -- left
RIGHT JOIN sakila.batches b -- right
ON s.batch_id = b.id;