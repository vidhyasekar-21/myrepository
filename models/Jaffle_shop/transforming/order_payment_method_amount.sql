{{ config(schema='transforming',  materialized='table') }}

{% set payment_methods = get_payment_methods() %}

select 
orderid,
{% for paymentmethod in payment_methods %}
sum(case when paymentmethod = '{{paymentmethod}}' then amount end) as {{paymentmethod}}_amount,
{% endfor %}
sum(amount) as total_amount
from {{ ref('stg_payment') }}
group by 1
