-- ODEV 3 --

SELECT * FROM country
WHERE country LIKE 'A%a';

SELECT * FROM country
WHERE country LIKE '______%n'; -- buradaki _ sayısı en kaz kaç karakter istediğimizi gösterir.

SELECT title FROM film
WHERE title ILIKE ('%T%T%T%T');

SELECT * FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;