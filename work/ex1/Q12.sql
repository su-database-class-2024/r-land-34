SELECT
    title,
    replacement_cost
FROM
    film
WHERE
    replacement_cost = (
        SELECT
            max(replacement_cost)
        FROM
            film
    );