{{ config(materialized='table') }}

WITH tb1 as(
    select
    id ,
    first_name,
    last_name
    from {{source("Snowflake_Date",'RAW_CUSTOMERDATA')}})
select * from tb1    
