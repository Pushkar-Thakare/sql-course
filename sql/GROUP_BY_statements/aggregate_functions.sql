-- Aggregate Functions
-- Common functions:
-- AVG()
-- COUNT()
-- MAX()
-- MIN()
-- SUM()

--Notes:
-- happen only in SELECT and HAVING clause
-- COUNT() returns only the number of rows


SELECT MIN(replacement_cost) 
FROM film;

SELECT MAX(replacement_cost)
FROM film;

SELECT MAX(replacement_cost), MIN(replacement_cost)
FROM film;

-- round till 3 decimal places
SELECT ROUND(AVG(replacement_cost), 3)
FROM film;

-- say want to replace all films, so how much would it cost?

SELECT SUM(replacement_cost)
FROM film;



