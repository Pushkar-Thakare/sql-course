-- HAVING 

-- Why?
-- We can't use WHERE to filter results based on columns on which aggregate function is applied as those are not calculated until after GROUP BY statement is execulted.
-- Hence we use HAVING to filter those results after a GROUP BY call is executed


-- all customer id excluding some that transacted more than $200 in total 

SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id NOT IN (184, 6, 78, 55, 501) -- say filtering out some customers
GROUP BY customer_id
HAVING SUM(amount) > 200
ORDER BY SUM(amount) DESC;

-- say want to know number of per store that has more than 300 customers

SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;





