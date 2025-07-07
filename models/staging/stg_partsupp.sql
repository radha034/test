{{config(materialized='table')}}

WITH tb1 as(
    select
    PS_PARTKEY as PARTKEY,
    PS_SUPPKEY AS PS_SUPPKEY,
    PS_AVAILQTY AS AVAILQTY,
    PS_SUPPLYCOST AS SUPPLYCOST,
    PS_COMMENT AS COMMENT
    FROM {{source("Snowflake_Date",'RAW_PARTSUPP')}} )
    select * from tb1
