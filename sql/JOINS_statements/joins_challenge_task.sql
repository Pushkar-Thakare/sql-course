-- JOINS Challenge Tasks

-- 1. What are the emails of the customers who live in California?

SELECT email, district
FROM customer
INNER JOIN address		--we don't want any customer without address_id or an address_id without customer. we want the intersection of both tables.
ON customer.address_id = address.address_id
WHERE district = 'California';


-- 2. Get a list of movies "Nick Wahlberg" has been in.
-- sol:
-- film has film_id, title
-- film_actor has film_id and actor_id
-- actor has actor_id and first and last name
-- so let's first get actor_id

SELECT actor_id FROM actor
WHERE first_name = 'Nick' and last_name = 'Wahlberg';

-- so actor_id of Nick Wahlberg is 2
-- let's join film and film actor table on film_id

select title, first_name, last_name 
from (
	SELECT title, actor_id FROM film
	INNER JOIN film_actor
	ON film.film_id = film_actor.film_id
	) 
AS abc
INNER JOIN actor
ON abc.actor_id = actor.actor_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg'; -- oh heck yeah, didn't know how to do this. 

-- tried using alises and they work apprantely like this and the instructor told to look it up on your own to figure it out before giving solution.


-- his solution:

SELECT title, first_name, last_name
FROM film_actor
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
INNER JOIN filmm ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg'; 

-- so apparently you can stack joins on top of each other as long as the other table has a matching column as in the table in from clause.
-- found following on https://www.geeksforgeeks.org/sql/joining-three-tables-sql/

--		SELECT s.s_name, m.score, m.status, d.address_city, d.email_id, d.accomplishments
--		FROM student s
--		INNER JOIN marks m ON s.s_id = m.s_id
--		INNER JOIN details d ON m.school_id = d.school_id;

-- you also apparently don't have to use AS to create an alias of a table





