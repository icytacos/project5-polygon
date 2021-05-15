
-- Calculate total gas per week day
SELECT EXTRACT(DAYOFWEEK FROM block_timestamp) as weekday, SUM(gas_price/100000) as total_gas
    FROM {{ref('filter_nonce_721')}} 
GROUP BY weekday