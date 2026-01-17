SELECT
    stage,
    COUNT(DISTINCT user_id) AS users
FROM user_data
GROUP BY stage;

/* Out of 10,000 users:

5,000 go to product page

1,500 reach signup completed (cart)

450 verify (checkout)

225 become paid users

So:

Only 2.25% users convert to paid. */ 