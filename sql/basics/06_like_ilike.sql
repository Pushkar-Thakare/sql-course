-- LIKE and ILIKE
-- LIKE is case sensitive ilike is not
-- % can also be anything and nothing
-- _ only one wildcard 
-- can also use __ for two wildcard characters
-- can also use with not

-- all names starting with A and their last name should not start with B
select * from customer
where first_name like 'A%' and last_name not like 'B%'
order by last_name;

-- all customers who have 'her' in their first names
select * from customer
where first_name like '%her%'
order by first_name;