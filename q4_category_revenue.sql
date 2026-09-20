USE sakila;

SELECT
    c.name AS category,
    SUM(p.amount) AS total_revenue
FROM payment AS p
JOIN rental AS r
    ON p.rental_id = r.rental_id
JOIN inventory AS i
    ON r.inventory_id = i.inventory_id
JOIN film_category AS fc
    ON i.film_id = fc.film_id
JOIN category AS c
    ON fc.category_id = c.category_id
GROUP BY c.category_id, c.name
ORDER BY total_revenue DESC;