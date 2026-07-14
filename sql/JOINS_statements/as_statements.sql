-- AS Statements
-- Notes:
-- These alises gets assigned at the very end
-- So during filtering we use original column names/function names

-- A SELECT-list alias names an output column.
-- PostgreSQL allows that alias in ORDER BY and GROUP BY,
-- but not in WHERE or HAVING.
-- In WHERE and HAVING, write the original expression.


SELECT COUNT(*) AS num_transactions
FROM payment;


SELECT customer_id AS "Customer", SUM(amount) AS "total spent (> $150)"
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 150;

