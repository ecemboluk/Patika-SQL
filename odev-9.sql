-- ODEV 9 --

SELECT city.city, country.country FROM city
INNER JOIN country ON city.country_id = country.country_id;

SELECT DISTINCT customer.first_name, customer.last_name FROM payment
INNER JOIN customer ON payment.customer_id = customer.customer_id;

SELECT customer.first_name, customer.last_name FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id;