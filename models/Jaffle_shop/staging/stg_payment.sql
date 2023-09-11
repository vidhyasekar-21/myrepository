{{     config( materialized='table',  schema='STAGING'  ) }}
select * from raw.stripe.payment