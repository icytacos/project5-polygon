SELECT * FROM {{ref('joined_tables')}}
WHERE(BLOCK_NUMBER < 447)
LIMIT 10

