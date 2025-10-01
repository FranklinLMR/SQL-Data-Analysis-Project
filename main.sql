--Customers that live in Dominican Republic and its city
SELECT customer.first_name as "Name", customer.last_name as "Last name", city.city AS "City"
FROM customer JOIN city JOIN country JOIN address;
