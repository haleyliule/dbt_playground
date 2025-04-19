{{ config(schema='bronze')}}

select distinct *,
year(shipping_limit_date) as year_shipping, 
month(shipping_limit_date) as month_shipping,
(price+freight_value) as total_price
from {{ source('mysql_source', 'olist_order_items_dataset') }}