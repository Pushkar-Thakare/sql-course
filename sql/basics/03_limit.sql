-- LIMIT
-- 5 latest non-zero payments 

select * from payment
where amount != 0.00
order by payment_date desc
limit 5;


-- Exercise
-- 1. Ids of first 10 paying customers

select *
from payment
where amount != 0
order by payment_date 
limit 10;
-- trying to figure out why if i want to check wether there are any duplicates in the first 10 customers, why won't distinct work

--2. find titles of 5 movies with shortest runtime

SELECT title, length
FROM film
ORDER BY length asc
LIMIT 5;

--3. all flims under 50 min

select count(title)
from film
where length <=50


