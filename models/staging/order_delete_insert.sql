{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}

select * from {{source("Snowflake_Date",'RAW_ORDER_DATA')}}
