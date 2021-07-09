-- ODEV 10 --

SELECT city.city, country.country FROM city
LEFT JOIN country ON city.country_id = country.country_id;

SELECT DISTINCT customer.first_name, customer.last_name FROM payment
RIGHT JOIN customer ON payment.payment_id = customer.customer_id;

SELECT customer.first_name, customer.last_name FROM rental
FULL JOIN customer ON rental.customer_id = customer.customer_id;