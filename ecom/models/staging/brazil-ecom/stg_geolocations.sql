{{ config(schema='bronze')}}

select distinct 
cast(geolocation_zip_code_prefix as unsigned integer) as geolocation_zip_code_prefix,
geolocation_lat as lat,
geolocation_lng as lng,
geolocation_city as city,
geolocation_state as "state" 
from {{ source('mysql_source', 'olist_geolocation_dataset') }}

