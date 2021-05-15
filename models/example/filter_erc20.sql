SELECT * 
FROM {{ref('joined_tables')}}
WHERE is_erc20 = True