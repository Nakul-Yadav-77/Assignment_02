{% snapshot int_inventory_with_product_snapshot %}
{{ config(
    target_schema='snapshots',
    unique_key='product_id',  -- replace with your actual unique key
    strategy='check',
    check_cols=['store_id', 'Stock_on_hand']  -- replace with actual columns
) }}

select *
from {{ ref('int_inventory_with_product') }}

{% endsnapshot %}