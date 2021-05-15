SELECT * 
FROM {{ref('joined_tables')}}
WHERE is_erc721 = True