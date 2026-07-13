-- Aggregate Functions
-- Common functions:
-- AVG()
-- COUNT()
-- MAX()
-- MIN()
-- SUM()

--Notes:
-- Aggregate functions summarize groups of rows.
-- They are commonly used in SELECT, HAVING, and ORDER BY.
-- They cannot normally be used directly in WHERE because WHERE filters rows before grouping and aggregation occur.
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



