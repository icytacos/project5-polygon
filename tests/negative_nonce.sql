
-- Check that no nonces are less than 0
SELECT * 
FROM {{ref('joined_tables')}} 
WHERE nonce < 0