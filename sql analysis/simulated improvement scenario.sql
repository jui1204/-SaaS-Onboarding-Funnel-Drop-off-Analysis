/* Simulated improvement scenario (bonus, very impressive)

Business question:
What if we improve checkout → purchase conversion by 10%? */

WITH funnel AS (
    SELECT  stage, COUNT(DISTINCT user_id) AS users
    FROM user_data
    GROUP BY stage
)
SELECT
    stage,
    users,
    CASE
        WHEN stage = 'purchase' THEN ROUND(users * 1.10)
        ELSE users
    END AS projected_users_after_improvement
FROM funnel;
