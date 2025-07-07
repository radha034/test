{{config(materialized='table')}}
with tb1 as (
select concat(l_orderkey,'_',l_linenumber) as line_key,
l_orderkey as order_key,
l_quantity as line_quantity
from {{source("Snowflake_Date",'RAW_LINEITEM')}}
)

select * from tb1