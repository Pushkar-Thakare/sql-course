-- String Functions and Operators
-- docs
-- https://www.postgresql.org/docs/9.1/functions-string.html

SELECT LENGTH(first_name)
FROM customer;

SELECT first_name || ' '|| last_name as "Full Name"
FROM customer;

SELECT upper(first_name) || ' '|| upper(last_name) as "Full Name"
FROM customer;

SELECT lower(left(first_name, 3)) || lower(left(last_name, 3)) || '@gmail.com'
AS custom_email
FROM customer;