
SELECT 
    ROUND(AVG((return_date::date - rental_date::date)), 2) AS avg_rental_days
FROM rental
WHERE return_date IS NOT NULL