{% snapshot snap_customers_timestamp %}
{{config(
  strategy='timestamp',
  unique_key='id',
  updated_at= 'updated_at',
  invalidate_hard_deletes=True

  )
}}
select * from {{source("Snowflake_Date",'CUSTOMERS')}}
{% endsnapshot %}