SELECT 
    c.store_id,
    SUM(p.amount) AS total_income
FROM payment AS p
JOIN customer AS c 
ON p.customer_id = c.customer_id
GROUP BY c.store_id
ORDER BY total_income DESC
