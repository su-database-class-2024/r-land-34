WITH
    sales AS (
        SELECT
            category.name AS category,
            rental.rental_date AS rental_date,
            rental.return_date AS return_date,
            return_date - rental_date AS duration            
        FROM 
            rental
            JOIN inventory ON rental.inventory_id = inventory.inventory_id
            JOIN film_category ON inventory.film_id = film_category.film_id
            JOIN category ON film_category.category_id = category.category_id
    )
SELECT
    category,
    date_part('day', SUM(duration) / COUNT(*)) AS "rental_days(avg)"
FROM
    sales
GROUP BY
    category;
