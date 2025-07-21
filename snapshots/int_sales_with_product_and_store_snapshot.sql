{% snapshot int_sales_with_product_and_store_snapshot %}
{{
    config(
      target_schema='snapshots',
      unique_key='sale_id',
      strategy='check',
      check_cols=['product_id', 'store_id', 'units'] 
    )
}}

SELECT *
FROM {{ ref('int_sales_with_product_and_store') }}

{% endsnapshot %}