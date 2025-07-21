{% snapshot int_inventory_with_product_snapshot %}
{{
    config(
      target_schema='snapshots',
      unique_key='STORE_ID || \'-\' || PRODUCT_ID', 
      strategy='check',
      check_cols=['Stock_on_hand', 'Product_name'] 
    )
}}

SELECT *
FROM {{ ref('int_inventory_with_product') }}

{% endsnapshot %}