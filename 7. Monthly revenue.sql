SELECT 
    TO_CHAR(payment_date, 'YYYY-Month') AS year_month,
    SUM(amount) AS total_income
FROM payment
GROUP BY year_month
ORDER BY SUM(amount) DESC