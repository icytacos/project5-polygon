
-- Calculate average number of transactions per week day
SELECT d.weekday, num_txns/num_days as avg_txns_per_day
    FROM 
        {{ref('weekday_counts_721')}} d, 
        {{ref('transaction_counts_721')}} t
WHERE d.weekday = t.weekday ORDER BY d.weekday ASC