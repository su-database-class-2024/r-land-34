WITH
    sales AS (
        SELECT
            country.country,
            payment.amount,
            customer.customer_id
        FROM
            store
            JOIN address ON store.address_id = address.address_id
            JOIN city ON address.city_id = city.city_id
            JOIN country ON city.country_id = country.country_id
            JOIN inventory ON store.store_id = inventory.store_id
            JOIN rental ON inventory.inventory_id = rental.inventory_id
            JOIN payment ON rental.rental_id = payment.rental_id
            JOIN customer ON rental.customer_id = customer.customer_id
    )
SELECT
    country,
    SUM(amount) AS total_amount,
    COUNT(DISTINCT customer_id) AS num_of_customer
FROM
    sales
GROUP BY
    country;