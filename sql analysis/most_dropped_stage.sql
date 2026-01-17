/* Where exactly users stop (last stage reached)


At which step do users abandon most? */

WITH user_progress AS (
    SELECT
        user_id,
        MAX(
            CASE stage
                WHEN 'homepage' THEN 1
                WHEN 'product_page' THEN 2
                WHEN 'cart' THEN 3
                WHEN 'checkout' THEN 4
                WHEN 'purchase' THEN 5
            END
        ) AS max_stage
    FROM user_data
    GROUP BY user_id
)
SELECT
    max_stage,
    COUNT(*) AS users_stopped_here
FROM user_progress
GROUP BY max_stage
ORDER BY max_stage;
