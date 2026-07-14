-- OUTER JOIN

-- Its just UNION

-- Syntax Ex:
--		SELECT * FROM Registrations
--		FULL OUTER JOIN Logins
--		ON Registrations.name = Logins.name

-- missing values will be filled with NULL.


-- FULL OUTER JOIN with WHERE
-- Get rows unique to either table. That is, rows not found in both tables.
-- It's basically a Symmetric Difference operation.

-- Syntax Ex:
--      SELECT * FROM TableA
--      FULL OUTER JOIN TableB
--      ON TableA.col_match = TableB.col_match
--      WHERE TableA.col_match IS NULL OR 
--      TableB.col_match IS NULL


-- Practice
-- All payment_id should correspond to customer_id and vice versa

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;

-- returns null so everything is ok

-- we can verify results by:

SELECT COUNT(DISTINCT customer_id) 
FROM payment;

SELECT COUNT(DISTINCT customer_id) 
FROM customer;

-- both of these queries return in the same value, it dosne't mean the that they are the  same customer ids but we have verified that using the FULL OUTER JOIN and filtering ids with a WHERE clause









