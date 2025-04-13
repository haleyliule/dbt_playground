{{ config(schema='bronze')}}

select lower(customer_id) as customer_id,
lower(customer_unique_id) as customer_unique_id,
customer_zip_code_prefix, 
lower(customer_city) as customer_city,
customer_state
from {{ source('mysql_source', 'olist_customers_dataset') }}

