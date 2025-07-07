{{ config(materialized='table') }}

WITH supplier_parts AS (
SELECT * 
FROM {{ref('stg_supplier')}} as s
JOIN {{ref('stg_partsupp')}} as ps
ON s.s_suppkey=ps.ps_suppkey
JOIN snowflake_sample_data.tpch_sf1.part
ON ps.partkey=p_partkey
)

SELECT
s_suppkey AS supplier_key,
name AS supplier_name,
nationkey AS nation_key,
acctbal AS account_balance,
availqty AS available_quantity,
supplycost AS supply_cost,
p_partkey AS part_key,
p_name AS part_name,
p_mfgr AS part_manufacturer,
p_brand AS part_brand,
p_type AS part_type,
p_size AS part_size,
p_container AS part_container,
p_retailprice AS part_retail_price
FROM supplier_parts
