WITH
    sales AS (
        SELECT 
            category.name AS category,
            payment.amount
        FROM 
            rental
            JOIN inventory ON rental.inventory_id = inventory.inventory_id
            JOIN payment ON rental.rental_id = payment.rental_id
            JOIN film_category ON inventory.film_id = film_category.film_id
            JOIN category ON film_category.category_id = category.category_id
    )
SELECT
    category,
    COUNT(*),
    SUM(amount) AS sales
FROM
    sales
GROUP BY
    category
ORDER BY
    sales DESC;