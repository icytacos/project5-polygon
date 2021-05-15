
-- Calculate average number of transactions per week day
WITH day_counts AS (
    SELECT weekday, COUNT(*) as num_days
    FROM( 
        SELECT 
            DISTINCT EXTRACT(DAY FROM BLOCK_TIMESTAMP) AS day,
            EXTRACT(DAYOFWEEK FROM BLOCK_TIMESTAMP) AS weekday
        FROM `project-5-313723.public_data_finance.filter_nonce`
    ) AS temp GROUP BY weekday
), txn_counts AS (
    SELECT EXTRACT(DAYOFWEEK FROM block_timestamp) as weekday, COUNT(*) as num_txns
        FROM `project-5-313723.public_data_finance.filter_nonce` 
    GROUP BY weekday
)
SELECT d.weekday, num_txns/num_days as avg_txns_per_day
    FROM day_counts d, txn_counts t
    WHERE d.weekday = t.weekday
ORDER BY d.weekday ASC