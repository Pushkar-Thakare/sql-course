-- BETWEEN
-- value BETWEEN low AND high --> value >= low AND value <= high
-- value NOT BETWEEN low AND high -> value < low OR value > high 

-- can also be used with date
-- formating needs to be  ISO 8601 --> YYYY-MM-DD
-- date BETWEEN '2001-06-26' AND '2002-07-3'
-- be careful with datetime formats

SELECT *
FROM payment
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15'
ORDER BY payment_date DESC
-- only goes as high as 00:00 of 2007-02-15 so say 06:34 of 2007-02-15 is not included
-- to include paments that happened on 15 set date to 2007-02-16
