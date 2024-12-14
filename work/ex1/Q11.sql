SELECT
    country_id,
    COUNT(*) AS count
FROM
    city
GROUP BY
    country_id
HAVING
    COUNT(*) >= 20
ORDER BY
    count DESC;
