/* 1. Overall funnel conversion rate (end-to-end)

Business question:
“How many visitors finally become paid users?” */ 

WITH stage_counts AS (
    SELECT stage, COUNT(DISTINCT user_id) AS users
    FROM user_data
    GROUP BY stage
)
SELECT
    ROUND(
        (SELECT users FROM stage_counts WHERE stage='purchase') * 1.0 /
        (SELECT users FROM stage_counts WHERE stage='homepage'),
        4
    ) AS overall_conversion_rate;
