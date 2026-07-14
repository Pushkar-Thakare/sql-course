-- INNER JOIN

-- An INNER JOIN will result with the set of records that match in both tables. 
-- Basically an Intersection Operation.

-- Syntax:
-- 		SELECT * FROM TableA
--		INNER JOIN TableB
--		ON TableA.col_match = TableB.col_match

-- Here in INNER JOIN TableA and TableB are interchangable

-- Ex:
-- 		SELECT * FROM Registrations
--		INNER JOIN Logins
--		ON Registrations.name = Logins.name

-- It'll create duplicate column for name
-- so we do 
-- 		SELECT reg_id, Logins.name, log_id
-- We use Logins.name or Registrations.name instead of just name because we have specify which actuall column we want as name column exists in both tabels.

-- PostgreSQL defaults to INNER JOIN when you type only JOIN

-- email and first name and customer_id associated with payment_id 

SELECT payment_id, payment.customer_id, first_name, email FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
