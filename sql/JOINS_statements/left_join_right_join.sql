-- LEFT OUTER JOIN

-- answer's what values are in to A, disregarding any values exclusive to B

-- SYNTAX EX:
-- 		SELECT * FROM TableA
--		LEFT OUTER JOIN TableB
-- 		ON TableA.col_match = TableB.col_match


-- LEFT OUTER JOIN with WHERE

-- we can basically perform a A-B : subtraction or set difference operation
-- answer's what values are exclusive to A

-- SYNTAX EX:
-- 		SELECT * FROM TableA
--		LEFT OUTER JOIN TableB
-- 		ON TableA.col_match = TableB.col_match
-- 		WHERE TableB.column IS NULL  


-- Practice 

-- flims that are not in our inventory

SELECT film.film_id, title, inventory_id, store_id, inventory.film_id
FROM film
LEFT OUTER JOIN inventory 
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS null;


-- RIGHT OUTER JOIN 
-- same as the LEFT OUTER JOIN with just fliped order of tabels.

-- SYNTAX EX:
-- 		SELECT * FROM TableA
--		RIGHT OUTER JOIN TableB
-- 		ON TableA.col_match = TableB.col_match

-- RIGHT OUTER JOIN with WHERE 
-- values exclusive to  Table B

-- SYNTAX EX:
--		SELECT * FROM TableA
--		RIGHT OUTER JOIN TableB
--		ON TableA.col_match = TableB.col_match
-- 		WHERE TableA.id IS NULL



