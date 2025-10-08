--Top customers based on their country
SELECT country.country AS  "Country",COUNT(customer.customer_id) AS "People in that country"
FROM customer JOIN city JOIN country JOIN address
WHERE customer.address_id = address.address_id
AND address.city_id = city.city_id
AND city.country_id = country.country_id
GROUP BY country.country_id
ORDER BY "People in that Country" DESC 
;

--Movies in each genre
SELECT category.name AS "Genre of movie", count(film.film_id) AS "Amount of movies"
FROM category JOIN film JOIN film_category
WHERE category.category_id = film_category.category_id
AND film.film_id = film_category.film_id
GROUP BY category.category_id
ORDER BY count(film.film_id) DESC
;

--Most watched genres
SELECT category.name AS "Genre of movie", count(customer.customer_id) AS "Number of people"
FROM category JOIN film JOIN film_category JOIN rental JOIN Customer JOIN inventory
WHERE category.category_id = film_category.category_id
AND film.film_id = film_category.film_id
AND rental.customer_id = customer.customer_id
AND rental.inventory_id = inventory.inventory_id
AND film.film_id = inventory.film_id	
GROUP BY category.category_id
ORDER BY COUNT(customer.customer_id) DESC
;
