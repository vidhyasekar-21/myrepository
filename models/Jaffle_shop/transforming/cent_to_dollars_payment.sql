{{ config( materialized='table' , schema='transforming') }}

select 
id,
orderid,
paymentmethod,
status,
amount,
{{cents_to_dollars('amount')}} as amount_usd
from {{ ref('stg_payment') }}

