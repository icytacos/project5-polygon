
-- Calculate number of transactions per week day
SELECT EXTRACT(DAYOFWEEK FROM block_timestamp) as weekday, COUNT(*) as num_txns
    FROM `project-5-313723.public_data_finance.filter_nonce` 
GROUP BY weekday