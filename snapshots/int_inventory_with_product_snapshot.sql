{% snapshot int_inventory_with_product_snapshot %}
    {{ 
        config(
            target_schema='snapshots',
            unique_key='product_id',  
            strategy='check',
            check_cols=['store_id', 'Stock_on_hand']  
        ) 
    }}

select *
from {{ ref('int_inventory_with_product') }}

{% endsnapshot %}