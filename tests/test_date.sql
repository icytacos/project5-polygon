SELECT * FROM {{ref('joined_tables')}}
WHERE(BLOCK_TIMESTAMP > CURRENT_TIMESTAMP)
LIMIT 10