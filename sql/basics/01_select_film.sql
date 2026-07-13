-- SELECT WHERE Exercises
-- Challegnge No. 1
-- find email of customer named Nancy Thomas

select email
from customer
where first_name = 'Nancy' and last_name = 'Thomas';

-- Challenge No. 2
-- give description for movie Outlaw Hanky

select description
from film
where title = 'Outlaw Hanky';

-- Challenge No. 3
-- give phone number for customer who lives at 259 Ipoh Drive

select phone
from address
where address = '259 Ipoh Drive';




