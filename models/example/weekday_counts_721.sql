
-- Calculate counts of each day of the week with recorded transactions
SELECT weekday, COUNT(*) as num_days
FROM( 
    SELECT 
        DISTINCT EXTRACT(DAY FROM BLOCK_TIMESTAMP) AS day,
        EXTRACT(DAYOFWEEK FROM BLOCK_TIMESTAMP) AS weekday
    FROM {{ref('filter_nonce_721')}}
) AS temp GROUP BY weekday