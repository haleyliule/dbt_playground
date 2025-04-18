{{ config(schema='bronze')}}

select distinct *,
year(shipping_limit_date) as year_shipping, 
month(shipping_limit_date) as month_shipping,
case when freight_value >= (select avg(freight_value) from {{ source('mysql_source', 'olist_order_items_dataset') }} ) then 1 else 0 end as greater_than_avg_freight,
case when price >= (select avg(price) from {{ source('mysql_source', 'olist_order_items_dataset') }} ) then 1 else 0 end as greater_than_avg_price
 from {{ source('mysql_source', 'olist_order_items_dataset') }}