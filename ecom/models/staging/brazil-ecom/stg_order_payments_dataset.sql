{{ config(schema='bronze')}}

select distinct * from {{ source('mysql_source', 'olist_order_payments_dataset') }}