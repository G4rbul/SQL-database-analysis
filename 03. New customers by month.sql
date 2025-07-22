SELECT
    TO_CHAR(create_date, 'Month') AS year_month,
    COUNT(customer_id) AS new_customers
FROM customer
GROUP BY year_month
ORDER BY year_month
