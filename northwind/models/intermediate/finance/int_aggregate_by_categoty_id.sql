WITH int_aggregate_by_categoty_id as (
    SELECT
        id,
        COUNT(*)
    FROM {{ref('stg_crm__nova_tabela')}}   
    GROUP BY id 
)
SELECT * FROM int_aggregate_by_categoty_id