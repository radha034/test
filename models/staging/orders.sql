{{ config(materialized='table') }}

WITH tb1 as(
    select id,
    order_date,
    user_id
from {{source("Snowflake_Date",'RAW_ORDER_DATA')}})
SELECT * from tb1