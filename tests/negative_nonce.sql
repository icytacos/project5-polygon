
-- Check that no nonces are less than 0

SELECT COUNT(*) FROM `public-data-finance.crytpo_polygon.transactions` WHERE nonce < 0