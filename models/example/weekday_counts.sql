
-- Calculate counts of each weekday with recorded transactions

SELECT weekday, COUNT(*) AS num_days
FROM(
    SELECT 
        DISTINCT EXTRACT(DAY FROM BLOCK_TIMESTAMP) AS day,
        EXTRACT(DAYOFWEEK FROM BLOCK_TIMESTAMP) AS weekday
    FROM {{ref('filter_nonce')}}
) AS temp 
GROUP BY weekday
ORDER BY weekday ASC