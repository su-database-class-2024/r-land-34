SELECT
    country_id,
    COUNT(*) AS count
FROM
    city
GROUP BY
    country_id
ORDER BY
    count DESC;