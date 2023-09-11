{{ config ( schema = 'reporting' , materialized='view')}}
select *   from {{ref('trf_customers')}}