
-- Calculate average gas per week day
SELECT d.weekday, total_gas/num_days as avg_gas_per_day
    FROM 
        {{ref('weekday_counts_721')}} d, 
        {{ref('gas_total_721')}} t
WHERE d.weekday = t.weekday ORDER BY d.weekday ASC