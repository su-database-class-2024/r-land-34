SELECT
    *
FROM
    address
    RIGHT OUTER JOIN city ON address.city_id = city.city_id
WHERE
    address is NULL;