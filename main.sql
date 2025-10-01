--Customers that live in Dominican Republic and its city
SELECT country.country AS  "Country", COUNT(customer.customer_id) AS "People in that country"
FROM customer JOIN city JOIN country JOIN address
WHERE customer.address_id = address.address_id
AND address.city_id = city.city_id
AND city.country_id = country.country_id
GROUP BY country.country_id
ORDER BY "People in that Country" DESC
;