{{ config(schema='bronze')}}

select * from {{ source('mysql_source', 'olist_orders_dataset') }}