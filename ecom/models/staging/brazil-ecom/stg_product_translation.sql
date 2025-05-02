{{ config(schema='bronze')}}

select distinct * from {{ source('mysql_source', 'product_category_name_translation') }}

