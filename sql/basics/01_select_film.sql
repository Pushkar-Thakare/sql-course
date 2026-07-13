-- Using WHERE

-- get title of all R rated movies whose replacement cost is above $25

SELECT title
FROM film
WHERE replacement_cost > 25 
AND rating ='R'