SELECT 
    COUNT(p.payment_id) AS payment_count, 
    c.first_name,
    c.last_name
FROM payment AS p
JOIN customer AS c 
ON p.customer_id = c.customer_id
GROUP BY 
    c.customer_id, 
    c.first_name, 
    c.last_name
ORDER BY payment_count DESC
LIMIT 10
