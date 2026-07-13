-- HAVING Challenge

-- 1. Launching platinum service for our most loyal customer, so customers that have had 40 or more transctions. So what customer_ids are eligible for platinum status?

SELECT customer_id, COUNT(*)
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40
ORDER BY COUNT(*) DESC;

-- S0, customer_id 148, 526, 144 is eligible for platinum status.


-- 2. What are the customer ids who have spent more tha 100 in payment transactions with our staff_id member 2?

SELECT  customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;
