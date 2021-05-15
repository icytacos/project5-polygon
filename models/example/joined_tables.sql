SELECT *
FROM `public-data-finance.crypto_polygon.transactions` AS transactions
LEFT JOIN (SELECT address, is_erc20, is_erc721 FROM `public-data-finance.crypto_polygon.contracts`) AS contracts ON (transactions.to_address = contracts.address)