{{ config(schema='bronze')}}

with base as (
select distinct *, max(payment_sequential) over (partition by order_id) as max_seq from {{ source('mysql_source', 'olist_order_payments_dataset') }})

select *,
case when max_seq >1 then 1 else 0 end as multi_payment_methods 
from base