ALTER TABLE payment ADD COLUMN payment_type VARCHAR(20)

UPDATE payment
SET payment_type = CASE
    WHEN MOD(payment_id, 3) = 0 THEN 'Cash'
    WHEN MOD(payment_id, 3) = 1 THEN 'Credit Card'
    ELSE 'Online Payment'
END

SELECT 
	payment_type, 
	COUNT(amount) AS total_count,
	SUM(amount) AS total_income
FROM payment
GROUP BY payment_type