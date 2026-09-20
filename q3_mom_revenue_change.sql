USE sakila;

WITH monthly_revenue AS (
    SELECT
        DATE_FORMAT(payment_date, '%Y-%m') AS month,
        SUM(amount) AS revenue
    FROM payment
    GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
)

SELECT
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS previous_month_revenue,
    revenue - LAG(revenue) OVER (ORDER BY month) AS mom_change
FROM monthly_revenue
ORDER BY month;