SELECT * FROM (
    SELECT *, PERCENT_RANK() OVER (ORDER BY nonce) AS percentile
    FROM {{ref('filter_erc721')}}
) WHERE percentile >= 0.75 ORDER BY percentile DESC