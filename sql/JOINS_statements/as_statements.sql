-- AS Statements
-- Notes:
-- These alises gets assigned at the very end
-- So during filtering we use original column names/function names


SELECT COUNT(*) AS num_transactions
FROM payment;


SELECT customer_id AS "Customer", SUM(amount) AS "total spent (> $150)"
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 150;

