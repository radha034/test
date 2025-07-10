{{config(materialized='incremental', incremental_strategy='append')}}
select * from {{source("Snowflake_Date",'RAW_ORDER_DATA')}} where id in (1,2,3,4,5)