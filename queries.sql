-- What is the age distribution?
SELECT age, COUNT(*) AS user_count
FROM users
GROUP BY age
ORDER BY age;

-- Average followers by account type
SELECT account_type, AVG(follower_count) AS avg_followers
FROM users
GROUP BY account_type;

-- Best platform
SELECT platform,
       ROUND(AVG((likes + comments_count + shares)/views), 4) AS avg_engagement
FROM posts
GROUP BY platform
ORDER BY avg_engagement DESC;

-- Best content type
SELECT content_type,
       AVG(likes) AS avg_likes
FROM posts
GROUP BY content_type
ORDER BY avg_likes DESC;

-- BEST TIME TO POST
SELECT HOUR(post_datetime) AS hours,
       AVG(likes) AS avg_likes
FROM posts
GROUP BY hours
ORDER BY avg_likes DESC;

-- Do creators get more engagement?
SELECT u.account_type,
       AVG(p.likes) AS avg_likes
FROM users u
JOIN posts p ON u.user_id = p.user_id
GROUP BY u.account_type;

-- USAGE VS MENTAL HEALTH 
SELECT 
    CASE 
        WHEN avg_usage < 60 THEN '<1h'
        WHEN avg_usage < 120 THEN '1-2h'
        WHEN avg_usage < 240 THEN '2-4h'
        WHEN avg_usage < 480 THEN '4-8h'
        ELSE '8h+'
    END AS usage_bucket,
    AVG(avg_anxiety) AS avg_anxiety
FROM (
    SELECT 
        s.user_id, 
        AVG(s.daily_usage_minutes) AS avg_usage, 
        AVG(sv.anxiety_score) AS avg_anxiety
    FROM sessions s
    JOIN survey sv ON s.user_id = sv.user_id
    GROUP BY s.user_id
) t
GROUP BY usage_bucket;

-- SENTIMENT ANALYSIS
SELECT 
    CASE 
        WHEN sentiment_score < -0.1 THEN 'Negative'
        WHEN sentiment_score <= 0.1 THEN 'Neutral'
        ELSE 'Positive'
    END AS sentiment,
    COUNT(*) AS count
FROM comments
GROUP BY sentiment;