{{     config( materialized='table',  schema='STAGING'  ) }}

select * from raw.jaffile_shop.orders


