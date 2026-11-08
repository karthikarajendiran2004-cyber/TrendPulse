

-- ==========================================
-- TRENDPULSE
-- SQL AND SPREADSHEET ANALYSIS
-- ==========================================

-- 1. Total records
SELECT COUNT(*) AS total_records
FROM videos;


-- 2. Category performance
SELECT
    category_name,
    COUNT(*) AS total_videos,
    SUM(views) AS total_views,
    ROUND(AVG(views), 2) AS average_views
FROM videos
GROUP BY category_name
ORDER BY total_views DESC;


-- 3. Country performance
SELECT
    country,
    COUNT(*) AS total_videos,
    SUM(views) AS total_views,
    ROUND(AVG(views), 2) AS average_views,
    SUM(likes) AS total_likes
FROM videos
GROUP BY country
ORDER BY total_views DESC;


-- 4. Top 10 trending records by views
SELECT
    title,
    channel_title,
    country,
    category_name,
    views,
    likes
FROM videos
ORDER BY views DESC
LIMIT 10;


-- 5. Channel performance
SELECT
    channel_title,
    COUNT(DISTINCT video_id) AS unique_videos,
    SUM(views) AS total_views,
    ROUND(AVG(views), 2) AS average_views,
    SUM(likes) AS total_likes
FROM videos
GROUP BY channel_title
HAVING COUNT(DISTINCT video_id) >= 2
ORDER BY total_views DESC
LIMIT 10;


-- 6. Category engagement
SELECT
    category_name,
    SUM(views) AS total_views,
    SUM(likes) AS total_likes,
    SUM(comment_count) AS total_comments,
    ROUND(
        SUM(likes) * 100.0 / NULLIF(SUM(views), 0),
        2
    ) AS like_rate_percentage
FROM videos
GROUP BY category_name
ORDER BY like_rate_percentage DESC;


-- 7. Trending speed by category
SELECT
    category_name,
    ROUND(AVG(days_to_trend), 2) AS average_days_to_trend,
    MIN(days_to_trend) AS fastest_trending_days,
    MAX(days_to_trend) AS slowest_trending_days,
    COUNT(DISTINCT video_id) AS unique_videos
FROM videos
GROUP BY category_name
ORDER BY average_days_to_trend ASC;


-- 8. Country and category performance
SELECT
    country,
    category_name,
    COUNT(DISTINCT video_id) AS unique_videos,
    SUM(views) AS total_views,
    ROUND(AVG(views), 2) AS average_views
FROM videos
GROUP BY country, category_name
ORDER BY country, total_views DESC;


-- 9. INNER JOIN: Videos and categories
SELECT
    c.category_name,
    COUNT(DISTINCT v.video_id) AS unique_videos,
    SUM(v.views) AS total_views,
    ROUND(AVG(v.views), 2) AS average_views
FROM videos v
INNER JOIN categories c
    ON v.category_id = c.category_id
GROUP BY c.category_name
ORDER BY total_views DESC;


-- 10. Monthly trending performance
SELECT
    substr(trending_date, 1, 7) AS trend_month,
    country,
    COUNT(DISTINCT video_id) AS unique_videos,
    SUM(views) AS total_views,
    ROUND(AVG(views), 2) AS average_views
FROM videos
GROUP BY trend_month, country
ORDER BY trend_month, country;

