{{     config( materialized='table',  schema='STAGING'  ) }}
select * from {{env_var ('DBT_SOURCEDB','RAW')}}.jaffile_shop.Customers