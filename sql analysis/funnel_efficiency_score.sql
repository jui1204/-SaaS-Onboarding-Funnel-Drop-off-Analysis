/* Funnel efficiency score

How efficient is each step? */

WITH funnel AS (
    SELECT stage, COUNT(DISTINCT user_id) AS users
    FROM user_data
    GROUP BY stage
)
SELECT
    stage,
    users,
    ROUND(
        users * 100.0 /
        FIRST_VALUE(users) OVER (
            ORDER BY CASE stage
                WHEN 'homepage' THEN 1
                WHEN 'product_page' THEN 2
                WHEN 'cart' THEN 3
                WHEN 'checkout' THEN 4
                WHEN 'purchase' THEN 5
            END
        ),
        2
    ) AS funnel_efficiency_percent
FROM funnel;
