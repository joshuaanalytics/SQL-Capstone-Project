USE sakila;

WITH category_revenue AS (
    SELECT
        c.category_id,
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
    GROUP BY
        c.category_id,
        c.name
),

ranked_categories AS (
    SELECT
        category,
        total_revenue,
        ROW_NUMBER() OVER (
            ORDER BY total_revenue DESC
        ) AS category_rank,
        SUM(total_revenue) OVER () AS overall_revenue
    FROM category_revenue
)

SELECT
    category,
    total_revenue,
    ROUND(
        total_revenue / overall_revenue * 100,
        2
    ) AS revenue_percentage
FROM ranked_categories
WHERE category_rank = 1;