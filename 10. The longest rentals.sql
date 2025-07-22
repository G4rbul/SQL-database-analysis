SELECT 
    r.rental_id,
    c.first_name,
    c.last_name,
    f.title,
    r.rental_date,
    r.return_date,
    (r.return_date - r.rental_date) AS rental_days
FROM rental AS r
JOIN inventory AS i ON r.inventory_id = i.inventory_id
JOIN film AS f ON i.film_id = f.film_id
JOIN customer AS c ON r.customer_id = c.customer_id
WHERE r.return_date IS NOT NULL
ORDER BY rental_days DESC
LIMIT 10