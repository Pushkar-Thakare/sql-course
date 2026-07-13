-- GROUP BY 

-- Syntax:

-- SELECT category_col, AGG(data_col)
-- FROM table
-- WHERE category_col != 'A'  ... example
-- GROUp BY category_col


-- Notes
-- Must apprear right after FROM or WHERE
-- In SELECT statement, columns must either have an aggregate function or be in GROUP BY call
-- WHERE statements should not refer to the aggregation result as we have HAVING to filter those results.
-- EX:
--		SELECT company, division, SUM(sales)
-- 		FROM finance
--		WHERE division IN ('marketing', 'transport')
-- 		GROUP BY company, division
-- EX:
--		SELECT company, SUM(sales)
--		FROM finance_table
--		GROUP BY company
--		ORDER BY SUM(sales) ... just using sales won't work as besides GROUP BY there a sum(sales) column and not a sales column
-- 		LIMIT 5


-- Practice:

-- what customer_id is spending the most amount of money?
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

-- what customer_id transacts with what staff_id and how much?
SELECT customer_id, staff_id, COUNT(amount)
FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id , staff_id; 

-- top 5 customer_id that transacts the most times
SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC 
LIMIT 5;

-- top 5 customer_id that transacts the most 
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC 
LIMIT 5;

-- how much amount does each staff_id handle
SELECT staff_id, SUM(amount)
FROM payment
GROUP BY staff_id
ORDER BY SUM(amount) DESC;

-- how much each customer spent with each staff member

SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id, SUM(amount) DESC;


-- GROUP BY on date
-- we have to convert timestamp to date using a DATE function

SELECT DATE(payment_date) FROM payment; --removed timestamp and left only dates


-- how much was transacted on each day

SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY DATE(payment_date);

-- top 5 days by amount transacted

SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC
LIMIT 5; -- so 2007-04-30 was when highest total amount was transacted





