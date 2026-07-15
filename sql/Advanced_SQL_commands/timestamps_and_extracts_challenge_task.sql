-- Timestamps and Extract Challenge Task

-- 1. During which month did payments occur? Format to return back full month name

SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH'))
FROM payment;

-- 2. How many payments occured on Monday?
-- my sol without looking anything up:
SELECT TO_CHAR(payment_date, 'Day') ind , COUNT(amount)
FROM payment
GROUP BY ind
HAVING TO_CHAR(payment_date, 'Day') LIKE 'M%';
-- this works

-- my sol based on his hints:
SELECT COUNT(EXTRACT(DOW FROM payment_date)) as "Payments on Monday" 
FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;

--his sol: 
SELECT COUNT(*) 
FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;


