/* percentage of users reaching each stage

Business question:
What % of total users reach each step? */ 

WITH total AS (
    SELECT COUNT(DISTINCT user_id) AS total_users
    FROM user_data
    WHERE stage = 'homepage'
),
stage_counts AS (
    SELECT stage, COUNT(DISTINCT user_id) AS users
    FROM user_data
    GROUP BY stage
)
SELECT
    stage,
    users,
    ROUND(users * 100.0 / (SELECT total_users FROM total), 2) AS reach_percentage
FROM stage_counts
ORDER BY reach_percentage DESC;
