{{ config(
materialized="incremental",
unique_key ='id',
incremental_strategy= "merge"
) }}
select * from {{source("Snowflake_Date",'RAW_ORDER_DATA')}}
