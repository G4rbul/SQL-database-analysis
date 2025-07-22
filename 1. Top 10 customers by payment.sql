SELECT 
	SUM(p.amount) AS total_payment, 
	c.first_name, 
	c.last_name FROM payment AS p
JOIN customer AS c
ON p.customer_id = c.customer_id
GROUP BY 
	c.customer_id, 
	c.first_name, 
	c.last_name
ORDER BY SUM(amount) DESC
LIMIT 10