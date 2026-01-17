-- Conversion rate by stage--

WITH funnel AS (
    SELECT
        field2 AS stage,
        COUNT(DISTINCT field1) AS users
    FROM user_data
    WHERE field3 = 1
    GROUP BY field2
)

SELECT
    stage,
    users,
    ROUND(
        users * 1.0 /
        LAG(users) OVER (
            ORDER BY CASE stage
                WHEN 'homepage' THEN 1
                WHEN 'product_page' THEN 2
                WHEN 'cart' THEN 3
                WHEN 'checkout' THEN 4
                WHEN 'purchase' THEN 5
            END
        ), 3
    ) AS conversion_rate
FROM funnel;
