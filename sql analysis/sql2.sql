-- Users at each funnel stage --

SELECT
    field2 AS stage,
    COUNT(DISTINCT field1) AS users
FROM user_data
WHERE field3 = 1
GROUP BY field2
ORDER BY
    CASE field2
        WHEN 'homepage' THEN 1
        WHEN 'product_page' THEN 2
        WHEN 'cart' THEN 3
        WHEN 'checkout' THEN 4
        WHEN 'purchase' THEN 5
    END;
