{{ config(schema='bronze')}}

select * from {{ source('mysql_source', 'olist_order_payments_dataset') }}