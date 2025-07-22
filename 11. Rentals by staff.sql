SELECT 
    s.first_name || ' ' || s.last_name AS staff_name,
    COUNT(r.rental_id) AS rental_count
FROM rental AS r
JOIN staff AS s ON r.staff_id = s.staff_id
GROUP BY s.staff_id, s.first_name, s.last_name
ORDER BY rental_count DESC