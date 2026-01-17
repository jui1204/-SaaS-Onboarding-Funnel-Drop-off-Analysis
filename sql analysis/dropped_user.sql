--Drop-off users at each stage--
WITH funnel AS (
    SELECT
        stage,
        COUNT(DISTINCT user_id) AS users
    FROM user_data
    GROUP BY stage
)

SELECT
    stage,
    users,
    LAG(users) OVER (
        ORDER BY CASE stage
            WHEN 'homepage' THEN 1
            WHEN 'product_page' THEN 2
            WHEN 'cart' THEN 3
            WHEN 'checkout' THEN 4
            WHEN 'purchase' THEN 5
        END
    ) - users AS dropped_users
FROM funnel;
