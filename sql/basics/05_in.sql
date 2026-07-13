-- IN 
-- checks if a value is IN (multiple options)
-- can also do NOT IN

-- say you want all order that are 0.99, 1.98, 1.99

SELECT * FROM payment
WHERE amount IN (0.99, 1.98, 1.99);

-- say you want number of payments not in 0.99, 1.98, 1.99

SELECT COUNT(*)
FROM payment
WHERE amount NOT IN (0.99, 1.98, 1.99);

-- finding some customers from select list of customers
SELECT * FROM customer
WHERE first_name  IN ('John', 'Marie', 'Suzie', 'Jake', 'Amy')

