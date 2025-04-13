{{ config(schema='bronze')}}

select * from {{ source('mysql_source', 'product_category_name_translation') }}

