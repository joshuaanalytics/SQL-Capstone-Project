USE sakila;

SELECT
    DATE_FORMAT(payment_date, '%Y-%m') AS month,
    SUM(amount) AS monthly_revenue
FROM payment
GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
ORDER BY month;