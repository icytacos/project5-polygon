
-- Calculate Active Daily EOA's from Polygon Transactions 

SELECT 
    EXTRACT(DAYOFWEEK FROM BLOCK_TIMESTAMP) as day,
    COUNT(DISTINCT from_address) AS active_addresses,
FROM `public-data-finance.crypto_polygon.transactions`
GROUP BY day
ORDER BY day ASC