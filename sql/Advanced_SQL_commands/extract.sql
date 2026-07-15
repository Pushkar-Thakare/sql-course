-- EXTRACTS

-- Using
-- 1. EXTRACT()
-- 2. AGE()
-- 3. TO_CHAR()


-- 1. EXTRACT()

-- Allows us to 'extract' or obtain a sub-component of a date value
-- Such as: 
--		1. YEAR
-- 		2. MONTH
-- 		3. DAY
-- 		4. WEEK
-- 		5. QUARTER
-- SYNTAX EX:
--		EXTRACT(YEAR FROM date_col);

-- 2. AGE()

-- Calculates and return the current age given a timestamp
-- SYNTAX EX:
--		AGE(date_col);
-- Returns
-- 13 years 1 mon 5 day 01:34:13.003423

-- 3. TO_CHAR()
-- Converts data types to text
-- Useful for timestamp formatting
-- Usage
--		TO_CHAR(date_col, 'mm-dd-yyyy')



-- Practise

-- extracting payment years

SELECT EXTRACT(YEAR FROM payment_date) AS "Payment Year" 
FROM payment;

-- distinct years

SELECT DISTINCT(EXTRACT(YEAR FROM payment_date)) AS "Payment Years" 
FROM payment;

-- get month

SELECT EXTRACT(MONTH FROM payment_date) AS "Payment MONTH" 
FROM payment;


-- get quarter

SELECT EXTRACT(QUARTER FROM payment_date) AS "Payment QUARTER" 
FROM payment;


-- say wanna know how old the payment date was

SELECT AGE(payment_date)
FROM payment;


-- TO_CHAR
-- documentation: https://www.postgresql.org/docs/current/functions-formatting.html

SELECT TO_CHAR(payment_date, 'DDth Mon, YYYY')
FROM payment;

SELECT TO_CHAR(payment_date, 'dd-MM-YYYY')
FROM payment;
