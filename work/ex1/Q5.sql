SELECT
    film_id,
    rating
FROM
    film
WHERE
    rating = 'PG'
    OR rating = 'G'
LIMIT
    5;