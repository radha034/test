{% snapshot snap_customers_timestamp %}
{{config(
strategy = 'timestamp',
unique_id = 'id',
updated_at = 'updated_at'

)}}
select * from {{source("Snowflake_Date",'CUSTOMERS')}}

{% endsnapshot %}