USE sakila;

WITH customer_spending AS (
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(p.amount) AS total_spent
    FROM customer AS c
    JOIN payment AS p
        ON c.customer_id = p.customer_id
    GROUP BY
        c.customer_id,
        c.first_name,
        c.last_name
)

SELECT
    customer_id,
    first_name,
    last_name,
    total_spent,
    CASE
        WHEN total_spent < 100 THEN 'Low'
        WHEN total_spent < 150 THEN 'Medium'
        ELSE 'High'
    END AS spend_tier
FROM customer_spending
ORDER BY total_spent DESC;