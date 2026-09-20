USE sakila;

WITH customer_orders AS (
    SELECT
        customer_id,
        COUNT(payment_id) AS purchase_count
    FROM payment
    GROUP BY customer_id
)

SELECT
    CASE
        WHEN purchase_count = 1 THEN 'One-time'
        ELSE 'Repeat'
    END AS customer_type,
    COUNT(*) AS customer_count
FROM customer_orders
GROUP BY customer_type
ORDER BY customer_type;