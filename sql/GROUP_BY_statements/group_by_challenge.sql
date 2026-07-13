-- GROUP Challenge

-- 1. How many payments did each staff member handle and who gets the bonus?

SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC;

-- hence staff_id 2 should get bonus for handling 7304 payment transactions


-- 2. What is the average replacement cost per MPAA rating

SELECT rating, ROUND(AVG(replacement_cost), 4)
FROM film
GROUP BY rating
ORDER BY AVG(replacement_cost) DESC;

-- hence we can see PG-13 rated films on avg costs most to replace

-- 3. Promotion to reward top 5 customers with coupons, so what are customer_ids of the top 5 customers by total spend?

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

-- so customer id 148, 526, 178, 137 & 144 are our top customers


