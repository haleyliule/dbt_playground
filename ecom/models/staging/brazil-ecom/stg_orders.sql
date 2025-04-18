{{ config(schema='bronze')}}

select distinct * from {{ source('mysql_source', 'olist_orders_dataset') }}