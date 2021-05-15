
-- Calculate average number of transactions per week day
SELECT d.weekday, num_txns/num_days as avg_txns_per_day
    FROM 
        `project-5-313723.public_data_finance.weekday_counts` d, 
        `project-5-313723.public_data_finance.transaction_counts` t
WHERE d.weekday = t.weekday ORDER BY d.weekday ASC