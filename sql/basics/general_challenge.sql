-- GENERAL CHALLENGE

-- 1. How many payment transactions were greater then $5.00?

SELECT COUNT(amount) FROM payment
WHERE amount > 5.00;

-- 2. How many actors have first name that starts with letter P?

SELECT COUNT(*) FROM actor
WHERE first_name ILIKE 'p%';

-- 3. How many unique discricts are our customers from?

SELECT COUNT(DISTINCT district) 
FROM address;

-- 4. Retrieve the list of names for those distinct districts from the last one?

SELECT DISTINCT district
FROM address;

-- 5. How many films have a rating of R and a replacement cost between $5 and $15?

SELECT COUNT(*) FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5.00 and 15.00;

-- 6. How many films have the word Truman somewhere in the title?

SELECT COUNT(*) FROM film
WHERE title ILIKE '%truman%';
-- sol: WHERE title LIKE '%Truman%' 