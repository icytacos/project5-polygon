
-- Calculate number of transactions per week day
SELECT EXTRACT(DAYOFWEEK FROM block_timestamp) as weekday, COUNT(*) as num_txns
    FROM {{ref('filter_nonce_721')}} 
GROUP BY weekday