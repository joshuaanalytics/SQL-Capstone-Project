USE sakila;

WITH product_revenue AS (
    SELECT
        c.name AS category,
        f.film_id,
        f.title AS product,
        SUM(p.amount) AS revenue
    FROM payment AS p
    JOIN rental AS r
        ON p.rental_id = r.rental_id
    JOIN inventory AS i
        ON r.inventory_id = i.inventory_id
    JOIN film AS f
        ON i.film_id = f.film_id
    JOIN film_category AS fc
        ON f.film_id = fc.film_id
    JOIN category AS c
        ON fc.category_id = c.category_id
    GROUP BY
        c.category_id,
        c.name,
        f.film_id,
        f.title
),
ranked_products AS (
    SELECT
        category,
        product,
        revenue,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY revenue DESC
        ) AS product_rank
    FROM product_revenue
)

SELECT
    category,
    product_rank,
    product,
    revenue
FROM ranked_products
WHERE product_rank <= 3
ORDER BY category, product_rank;