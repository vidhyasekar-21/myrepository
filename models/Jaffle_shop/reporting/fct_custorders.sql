{{ config ( schema = 'reporting' , materialized='table')}}
select *   from {{ref('trf_orders')}}