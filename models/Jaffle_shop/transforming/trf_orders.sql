{{ config ( schema = 'transforming' , materialized='table')}}
select * from {{ref('stg_orders')}}
