-- ODEV 7 --

SELECT rating, COUNT(*) FROM film
GROUP BY rating;

SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50;

SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;

SELECT country_id,COUNT(country_id) FROM city 
GROUP BY country_id
ORDER BY COUNT(country_id) DESC
LIMIT 1;