-- Math Function and Operators 
-- doc:
-- https://www.postgresql.org/docs/9.5/functions-math.html

SELECT ROUND(100*rental_rate/replacement_cost, 2) AS percent_cost
FROM film;

SELECT 0.1*replacement_cost AS deposit
FROM film;