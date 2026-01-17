/* 2. Users who dropped before payment (lost revenue)


How many users did we lose before monetization? */

SELECT
    COUNT(DISTINCT user_id) AS users_not_paid
FROM user_data
WHERE user_id NOT IN (
    SELECT DISTINCT user_id
    FROM user_data
    WHERE stage = 'purchase'
);
