{{ config ( schema = 'reporting' , materialized='table')}}
select
        id as custid,
        concat('first_name',',','last_name') as custname
    from {{ref('stg_customers')}}