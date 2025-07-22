SELECT 
	f.title, 
	COUNT(r.rental_id) AS rental_count
FROM rental AS r
INNER JOIN inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN film AS f
ON i.film_id = f.film_id
GROUP BY f.title, f.film_id 
ORDER BY rental_count DESC
LIMIT 10
