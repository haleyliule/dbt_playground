{{ config(schema='bronze')}}


with base as (select *, 
DATEDIFF(order_approved_at, order_purchase_timestamp) as purchase_to_approve_days,
TIMESTAMPDIFF(minute, order_purchase_timestamp, order_approved_at) as purchase_to_approve_in_minutes,
timestampdiff(minute, order_approved_at, order_delivered_carrier_date) as approve_to_carrier_in_minutes,
timestampdiff(minute, order_delivered_carrier_date, order_delivered_customer_date) as carrier_to_cx_in_minutes,
timestampdiff(minute, order_delivered_customer_date, order_estimated_delivery_date) as deliever_to_estimated_in_minutes,
DATEDIFF(order_delivered_customer_date, order_purchase_timestamp) as purchase_to_delieverd_days,
timestampdiff(minute, order_purchase_timestamp, order_delivered_customer_date) as purchase_to_delieverd_in_minutes
 from {{ source('mysql_source', 'olist_orders_dataset') }})

select * from base